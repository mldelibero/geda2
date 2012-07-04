#! /usr/bin/env/python2.7
import fileinput
import re
import sys
from regex import regex

gsubs = ""

def removeBox_pcb(file,pts):
    l1 = regex('l1',pts)
    l2 = regex('l2',pts)
    l3 = regex('l3',pts)
    l4 = regex('l4',pts)

    for line in fileinput.input([file],inplace=True):
        if (line == "%s%s" %(l1,"\n")):
            a =1
        elif (line == "%s%s" % (l2,"\n")):
            a=1
        elif (line == "%s%s" % (l3,"\n")):
            a=1
        elif (line == "%s%s" % (l4,"\n")):
            a=1
        else:
            print line

def drawBox_pcb(file,pts):
    l1 = regex('l1',pts)
    l2 = regex('l2',pts)
    l3 = regex('l3',pts)
    l4 = regex('l4',pts)

    reg_dr = re.compile(r"Layer\(1 ")
    prtNext = False
    for line in fileinput.input([file],inplace=True):
        mat = reg_dr.findall(line)
        if prtNext == True:
            prtNext = False
            print line,
            print l1
            print l2
            print l3
            print l4
        else:
            print line,

            if mat:
                a = 1
                prtNext = True

def drawBox_sch(file,pts):
    xmin = pts[0]
    ymin = pts[1]
    xmax = pts[2]
    ymax = pts[3]

    with open (file,"a") as f:
        f.write("\n")
        f.write("N %s %s %s %s\n" % (xmin, ymin, xmin, ymax))
        f.write("N %s %s %s %s\n" % (xmin, ymax, xmax, ymax))
        f.write("N %s %s %s %s\n" % (xmax, ymax, xmax, ymin))
        f.write("N %s %s %s %s\n" % (xmax, ymin, xmin, ymin))

def removeBox(file,xmin,ymin,xmax,ymax):
    """Remove a box of Net lines from a gEAD .sch file"""

    regs = []
    regs.append(re.compile("N %s %s %s %s\n" % (xmin, ymin, xmin, ymax)))
    regs.append(re.compile("N %s %s %s %s\n" % (xmin, ymax, xmax, ymax)))
    regs.append(re.compile("N %s %s %s %s\n" % (xmax, ymax, xmax, ymin)))
    regs.append(re.compile("N %s %s %s %s\n" % (xmax, ymin, xmin, ymin)))
    subs = gsubs
    for reg in regs:
        for line in fileinput.input([file],inplace=True):
            mat = reg.sub(subs,line)
            sys.stdout.write(mat)

def removeLine(file,xmin,ymin,xmax,ymax):
    reg = re.compile("N %s %s %s %s\n" % (xmin, ymin, xmax, ymax))
    subs = gsubs
    for line in fileinput.input([file],inplace=True):
        mat = reg.sub(subs,line)
        sys.stdout.write(mat)

def drawLine(file,xmin,ymin,xmax,ymax):
    with open (file,"a") as f:
        f.write("N %s %s %s %s\n" % (xmin, ymin, xmax, ymax))

def removeCross(file,x_cent,y_cent,inc):
    removeLine(file,x_cent - inc,y_cent,x_cent + inc, y_cent)
    removeLine(file,x_cent,y_cent - inc,x_cent, y_cent + inc)

def drawCross(file,x_cent,y_cent,inc):
#draw an x at a location
    h_line = "N %i %i %i %i\n" % (x_cent - inc,y_cent,x_cent + inc, y_cent)
    v_line = "N %s %s %s %s\n" % (x_cent,y_cent - inc,x_cent, y_cent + inc)

    with open (file,"a") as f:
        f.write("\n")
        f.write(h_line)
        f.write(v_line)

if __name__ == "__main__":
    file = "bak.sch"
    pts = get_MinMax_xy(file)

    draw.removeBox(file,pts[0],pts[1],pts[2],pts[3])
    draw.removeLine(file,pts[0],pts[1],pts[2],pts[3])
    draw.removeCross(file,int(pts[2]),int(pts[3]),300)

    draw.drawBox(file,pts[0],pts[1],pts[2],pts[3])
    draw.drawLine(file,pts[0],pts[1],pts[2],pts[3])
    draw.drawCross(file,int(pts[2]),int(pts[3]),300)
