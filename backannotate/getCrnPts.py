#! /usr/bin/env python2.7
import fileinput
import re
from regex import regex

def get_MinMax_xy_pcb(file):
    #Obtain all coordinatge points
    xpts = []
    ypts = []

    # x-y offsets for the current part
    x_off = 0
    y_off = 0

    blTup = tuple([0,0,0,0])
    reg_elLn = re.compile(regex('elLn',blTup))
    reg_elArc = re.compile(regex('elArc',blTup))
    reg_pin = re.compile(regex('pin',blTup))
    reg_pad = re.compile(regex('pad',blTup))
    reg_Ele = re.compile(regex('Ele',blTup))
    reg_line = re.compile(regex('line',blTup))

    #Don't find any sym lines before the first element
    elSect = False 

    much = 465900

    lnNum = 0
    for line in fileinput.input(["%s" % file],inplace=False):
        lnNum+=1
        mat = reg_Ele.findall(line)
        if mat:
            elSect = True
            x_off = int(mat[0][1])
            y_off = int(mat[0][2])

        if elSect:
            mat = reg_elLn.findall(line)
            if mat:
                x0 = int(mat[0][0]) + x_off
                y0 = int(mat[0][1]) + y_off
                x1 = int(mat[0][2]) + x_off
                y1 = int(mat[0][3]) + y_off
                xpts.append(x0)
                ypts.append(y0)
                xpts.append(x1)
                ypts.append(y1)
                
            else:
                mat = reg_elArc.findall(line)
                if mat:
                    x0 = int(mat[0][0]) + x_off
                    y0 = int(mat[0][1]) + y_off
                    x1 = int(mat[0][2]) + x_off
                    y1 = int(mat[0][3]) + y_off
                    xpts.append(x0)
                    ypts.append(y0)
                    xpts.append(x1)
                    ypts.append(y1)
                else:
                    mat = reg_pin.findall(line)
                    if mat:
                        x0 = int(mat[0][0]) + x_off
                        y0 = int(mat[0][1]) + y_off
                        xpts.append(x0)
                        xpts.append(y0)
                    else:
                        mat = reg_pad.findall(line)
                        if mat:
                            x0 = int(mat[0][0]) + x_off
                            y0 = int(mat[0][1]) + y_off
                            x1 = int(mat[0][2]) + x_off
                            y1 = int(mat[0][3]) + y_off
                            xpts.append(x0)
                            ypts.append(y0)
                            xpts.append(x1)
                            ypts.append(y1)

                        else:
                            mat = reg_line.findall(line)
                            if mat: 
                                x0 = int(mat[0][0])
                                y0 = int(mat[0][1])
                                x1 = int(mat[0][2])
                                y1 = int(mat[0][3])
                                xpts.append(x0)
                                ypts.append(y0)
                                xpts.append(x1)
                                ypts.append(y1)
    xmin = min(xpts)
    xmax = max(xpts)
    ymin = min(ypts)
    ymax = max(ypts)

    pts = (xmin,ymin,xmax,ymax)

    return pts

def get_MinMax_xy_sch(file):
    #Obtain all coordinate points
    dcor = []
    cor = []
    print "File is ",file,"\n"

    for line in fileinput.input(["%s" % file],inplace=False):
        regBad = re.compile(r"C \d+ \d+ \d+ \d+ \d+ title")
        matBad = regBad.findall(line)

        if matBad:
            a=1
        else:
            reg = re.compile(r"N (\d+) (\d+) (\d+) (\d+) ")
            mat =  reg.findall(line)
            if mat:
                dcor.append(mat[0])

            reg = re.compile(r"[T C] (\d+) (\d+) ")
            mat =  reg.findall(line)
            if mat:
                cor.append(mat[0])
    
    # Find xmin xmax ymin ymax
    # Put all x and all y in own lists

    xpts = []
    ypts = []
    for pts in cor:
        xpts.append(pts[0])
        ypts.append(pts[1])
    
    for pts in dcor:
        xpts.append(pts[0])
        ypts.append(pts[1])

        xpts.append(pts[2])
        ypts.append(pts[3])
        
    xmin = min(xpts)
    xmax = max(xpts)
    ymin = min(ypts)
    ymax = max(ypts)

    fileinput.close()
    return [xmin,ymin,xmax,ymax]
