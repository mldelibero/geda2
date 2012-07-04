#! /usr/bin/env python2.7

import fileinput
import re
from getCrnPts import get_MinMax_xy_sch
import sys

def copy_sch(sch,sub_sch,copies,prjPath,tmpPath):
    print "ouoeuauu"
    schFile = "%s%s" % (prjPath,sch)

    for cop in range(copies):
        prLn = False # controls when to print lines between regex matches
        # set after match, unset after not a match

        subFile = "%s%s%s" % (tmpPath,sub_sch,cop)
        print "sch file: %s" % schFile
        print "sub file: %s" % subFile
        pts = get_MinMax_xy_sch(schFile)
        print pts

        x_shift = int(pts[2]) - int(pts[0])
        y_shift = int(pts[3]) - int(pts[1])
        print "x_shift: ",x_shift
        print "y_shift: ",y_shift
        with open (schFile,"a") as wrFile:
            for line in fileinput.input([subFile],inplace=False):
                regBad = re.compile(r"C \d+ \d+ \d+ \d+ \d+ title")
                matBad = regBad.findall(line)

                if matBad:
                    prLn = False
                else:
                    reg = re.compile(r"N (\d+) (\d+) (\d+) (\d+) (\d+)")
                    mat =  reg.findall(line)
                    if mat:
                        prLn = True
                        mat = mat[0] # get rid of the outer list
                        x1 = int(mat[0])+x_shift
                        y1 = int(mat[1])+y_shift
                        x2 = int(mat[2])+x_shift
                        y2 = int(mat[3])+y_shift
                        col = mat[4]

                        subs = "N %s %s %s %s %s" % (x1,y1,x2,y2,col)
                        line = reg.sub(subs,line)
                        wrFile.write(line)
                        
                    else: # only need to try to match one of the last 2 regexs
                        reg = re.compile(r"([T C]) (\d+) (\d+) (.*)")
                        mat =  reg.findall(line)
                        if mat:
                            prLn = True
                            mat = mat[0]
                            des = mat[0]
                            x = int(mat[1])+x_shift
                            y = int(mat[2])+y_shift
                            post = mat[3]

                            subs = "%s %s %s %s" % (des,x,y,post)
                            line = reg.sub(subs,line)
                            wrFile.write(line)
                        elif (prLn == True):
                            wrFile.write(line)
                        else:
                            prLn = False
        wrFile.close()
