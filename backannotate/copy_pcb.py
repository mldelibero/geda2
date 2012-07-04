#! /usr/bin/env python2.7
import fileinput
import re
from getCrnPts import get_MinMax_xy_pcb
import sys
from regex import regex

class searchEnum:
    befAtt = 0 # Search has not yet passed the Attribute line
    inEle = 1 # Search is in the elements section
    inlay1 = 2 # Search is in the layer1 section
    inlay2 = 3 # Search is in the layer2 section
    inlay3 = 4
    inNetcom = 5 # Search is in the nets to be copied section
    inNetcop = 6 # Search is in the nets to be combined section
    inNet = 7 # in the netlist section -- only used in insertiottn

def getShift(pcb_file,subpcb_file,copies):
    #Shift each subpcb file
    ptsPcb = get_MinMax_xy_pcb(pcb_file)
    ptsSub = get_MinMax_xy_pcb(subpcb_file)
    x_shift = []
    y_shift = []
    
    xminus = int(ptsSub[0])
    yminus = int(ptsSub[1])
    xplus = int(ptsPcb[2])
    yplus = int(ptsPcb[3])

    incre = 1000
    ysinc = int(ptsSub[3]) - int(ptsSub[1]) + incre

    for cop in range(copies):
        yinc = cop * ysinc
        x_shift.append(xplus-xminus)
        y_shift.append(yplus-yminus + yinc)

    return [x_shift,y_shift]

def copy(pcb_file,spcb_file,copies,projPath,tmpPath):
    """
        *get MinMax pts from pcb and sub
        *generate offsets for all copies
        *open temporary files
        **Elements
        **nets
        *Look in pcb0
        **Skip lines until after attribute line
        **copy elements from all files into elemTemp file
        ***shift coordinates when adding elems to this file
        **copy layer1 lines into lay1temp file
        ***shift coord
        **copy layer2 lines into lay2temp file
        ***shift coord
        **copy Nets to be inserted in existing pcb nets into CopnetTemp
        **copy Nets to be combined with existing pcb nets in ComNetTemp
     """
    blTup = tuple([0,0,0,0])
    pcb_file = "%s%s" % (projPath,pcb_file)
    subpcb_file = "%s%s%s" % (tmpPath,spcb_file,0)

    shift = getShift(pcb_file,subpcb_file,copies)
    x_shift = shift[0]
    y_shift = shift[1]

    reg_befAt = re.compile(regex('befAt',blTup))
    reg_ele = re.compile(regex('Ele',blTup))
    reg_lay1 = re.compile(regex('lay1',blTup))
    reg_lay2 = re.compile(regex('lay2',blTup))
    reg_lay3 = re.compile(regex('lay3',blTup))
    reg_line = re.compile(regex('line',blTup))
    reg_netcop = re.compile(regex('net',blTup))
    reg_netcom = re.compile(regex('netpgnd',blTup))

    ele = []
    lay1 = []
    lay2 = []
    inNetcop = []
    inNetcom = []

    for cop in range(copies):
        subpcb_file = "%s%s%s" % (tmpPath,spcb_file,cop)
        state = searchEnum.befAtt # Initialize searching state

        for line in fileinput.input([subpcb_file],inplace = False):
            if state == searchEnum.befAtt:
                mat = reg_ele.findall(line)
                if mat:
                    mat = mat[0]
                    state = searchEnum.inEle
                    x = int(mat[1]) + x_shift[cop]
                    y = int(mat[2]) + y_shift[cop]
                    line = "Element[%s %s %s %s" % (mat[0],x,y,mat[3])
                    ele.append(line)
            elif state == searchEnum.inEle:
                mat = reg_lay1.findall(line)
                mat_ele = reg_ele.findall(line)
                if mat_ele:
                    mat_ele = mat_ele[0]
                    state = searchEnum.inEle
                    x = int(mat_ele[1]) + x_shift[cop]
                    y = int(mat_ele[2]) + y_shift[cop]
                    line = "Element[%s %s %s %s" % (mat_ele[0],x,y,mat_ele[3])
                    ele.append(line)
                elif mat:
                    state = searchEnum.inlay1
                else:
                    ele.append(line)
            elif state == searchEnum.inlay1:
                mat = reg_lay2.findall(line)
                matig = re.compile(r"^(\()$").findall(line)
                matig2 = re.compile(r"^(\))$").findall(line)
                if mat:
                    state = searchEnum.inlay2
                elif matig or matig2:
                    a = 1
                else:
                    lnpts = reg_line.findall(line)[0]
                    x0 = int(lnpts[0]) + x_shift[cop]
                    y0 = int(lnpts[1]) + y_shift[cop]
                    x1 = int(lnpts[2]) + x_shift[cop]
                    y1 = int(lnpts[3]) + y_shift[cop]

                    line = "    Line[%s %s %s %s %s\n" % (x0,y0,x1,y1,lnpts[4])
                    lay1.append(line)
            elif state == searchEnum.inlay2:
                mat = reg_lay3.findall(line)
                matig = re.compile(r"^(\()$").findall(line)
                matig2 = re.compile(r"^(\))$").findall(line)
                if mat:
                    state = searchEnum.inlay3
                elif matig or matig2:
                    a = 1
                else:
                    lnpts = reg_line.findall(line)[0]
                    x0 = int(lnpts[0]) + x_shift[cop]
                    y0 = int(lnpts[1]) + y_shift[cop]
                    x1 = int(lnpts[2]) + x_shift[cop]
                    y1 = int(lnpts[3]) + y_shift[cop]

                    line = "    Line[%s %s %s %s %s\n" % (x0,y0,x1,y1,lnpts[4])
                    lay2.append(line)
            elif state == searchEnum.inlay3:
                mat_cop = reg_netcop.findall(line)
                mat_com = reg_netcom.findall(line)

                if mat_com:
                    inNetcom.append(line)
                    state = searchEnum.inNetcom
                elif mat_cop:
                    inNetcop.append(line)
                    state = searchEnum.inNetcop

            elif state == searchEnum.inNetcom:
                mat_cop = reg_netcop.findall(line)
                mat_com = reg_netcom.findall(line)
                if mat_cop:
                    inNetcop.append(line)
                    state = searchEnum.inNetcop
                else:
                     inNetcom.append(line)
            elif state == searchEnum.inNetcop:
                mat_cop = reg_netcop.findall(line)
                mat_com = reg_netcom.findall(line)
                 
                if mat_com:
                    state = searchEnum.inNetcom
                    inNetcom.append(line)
                elif mat_cop:
                    inNetcop.append(line)
                else:
                    inNetcop.append(line)
    #Remove ending parenthesis
    temp = []
    reg = re.compile(r'^\)')
    for ln in inNetcop:
        mat = reg.findall(ln)
        if not(mat):
            temp.append(ln)
    inNetcop = temp 
    #Format the insert combined nets into a dictionary
    key = 'none'
    netComDict = {key:[]}
    for ln in inNetcom:
        mat = reg_netcom.findall(ln)
        mat_ign = re.compile(r'\($').findall(ln)
        mat_ign2 = re.compile(r'^\t\)$').findall(ln)
        if mat_ign or mat_ign2:
            a = 1
        elif mat:
            key = mat[0]
        else:
            try:
                netComDict[key].append(ln)
            except KeyError :
                netComDict[key] = []
                netComDict[key].append(ln)

    #Now move the list vars to the main pcb file
    '''
    ele = []
    lay1 = []
    lay2 = []
    inNetcop = []
    inNetcom = []

class searchEnum:
    befAtt = 0 # Search has not yet passed the Attribute line
    inEle = 1 # Search is in the elements section
    inlay1 = 2 # Search is in the layer1 section
    inlay2 = 3 # Search is in the layer2 section
    inlay3 = 4
    inNetcom = 5 # Search is in the nets to be copied section
    inNetcop = 6 # Search is in the nets to be combined section

    reg_befAt = re.compile(regex('befAt',blTup))
    reg_ele = re.compile(regex('Ele',blTup))
    reg_lay1 = re.compile(regex('lay1',blTup))
    reg_lay2 = re.compile(regex('lay2',blTup))
    reg_lay3 = re.compile(regex('lay3',blTup))
    reg_line = re.compile(regex('line',blTup))
    reg_netcop = re.compile(regex('net',blTup))
    reg_netcom = re.compile(regex('netpgnd',blTup))
    '''
    state = searchEnum.befAtt
    for line in fileinput.input([pcb_file],inplace = True):
        if state == searchEnum.befAtt:
            mat = reg_ele.findall(line)
            if mat:
                state = searchEnum.inEle
                for ln in ele:
                    print ln,
                print line,
            else:
                print line,
        elif state == searchEnum.inEle:
            mat = reg_lay1.findall(line)
            if mat:
                state = searchEnum.inlay1
                print line,
                print "(\n"
                for ln in lay1:
                    print ln,
            else:
                print line,
        elif state == searchEnum.inlay1:
            mat_ign = re.compile(r'^\(').findall(line)
            mat = reg_lay2.findall(line)
            if mat_ign:
                a = 1
            elif mat:
                state = searchEnum.inlay2
                print line,
                print "(\n"
                for ln in lay2:
                    print ln,
            else:
                print line,
        elif state == searchEnum.inlay2:
            mat_ign = re.compile(r'^\(').findall(line)
            mat = reg_lay3.findall(line)
            if mat_ign:
                a = 1
            elif mat:
                state = searchEnum.inlay3
                print line,
            else:
                print line,
        elif state == searchEnum.inlay3:
            mat_net = re.compile(r'^NetList\(\)').findall(line)
            if mat_net:
                state = searchEnum.inNet
                print line,
                print "(\n"
                for ln in inNetcop:
                    print ln,
            else:
                print line,
        elif state == searchEnum.inNet:
            mat_ign = re.compile(r'^\(').findall(line)
            mat_com = reg_netcom.findall(line)
            if mat_ign:
                a = 1
            elif mat_com:
                print line,
                print "    (\n"
                for ln in netComDict[mat_com[0]]:
                    print ln,
                state = searchEnum.inNetcop
            else:
                print line,
        elif state == searchEnum.inNetcop:
            state = searchEnum.inNet
#eof
    '''
    print "lay2\n"
    for ln in lay2:
        print ln,
    '''
    '''
    print "netComDict\n"
    for ln in netComDict['PGND']:
        print ln,
    '''
    '''
    print "elem\n"
    for ln in ele:
        print ln,
    '''
