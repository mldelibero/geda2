#!/usr/bin/env python

import os
import re
import createTemps
#--------------------------------------------------------------------
fpath = os.path.dirname(os.path.realpath(__file__))
schemln = "..."
pcbln   = "..."
#--------------------------------------------------------------------
#1. Overwrite gafrc file
createTemps.create_gafrc()
#--------------------------------------------------------------------
#2. Check to see if prj.prj exists
prjFile = "..."
for files in os.listdir("./"):
    if files.endswith(".prj"):
        prjFile = files
#--------------------------------------------------------------------
#3. Create new prj file and append old user data

if (os.path.exists("./" + prjFile)):
    for line in open("./" + prjFile,"r"):
        sch = re.search('^schematics',line)
        pcb = re.search('^output',line)
            
        if (sch != None):
            schemln = line
        if (pcb != None):
            pcbln = line
                
    if ((pcbln != "...") and (schemln != "...")):
        createTemps.create_prj_temp()
        with open ("./prj.prj","a") as afile:
            afile.write("\n")
            afile.write(schemln)
            afile.write(pcbln)
    else:
        print "Error: Current prj file does not have sch and output-name lines."
            
else:
    print "Error: No project file in current directory"

#//-----------------------------------------------------------------
