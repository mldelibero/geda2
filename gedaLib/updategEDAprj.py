#!/usr/bin/env python

import os
import shutil
import re
#//-----------------------------------------------------------------
#1. Find project file
#2. Find gafrc file
#3. update files based upon templates
#//-----------------------------------------------------------------
fpath = os.path.dirname(os.path.realpath(__file__))

if (os.path.exists(fpath + "/gafrc")):
    shutil.copy2(fpath + "/gafrc","./gafrc")
else:
    print "Error: gafrc template file no found!"
    
prjFile = "..."
schemln = "..."
pcbln   = "..."

for files in os.listdir("./"):
    if files.endswith(".prj"):
        prjFile = files

if (os.path.exists("./" + prjFile)):
    if (os.path.exists(fpath + "/prj.prj")):
        for line in open("./" + prjFile,"r"):
            sch = re.search('^schematics',line)
            pcb = re.search('^output',line)
            
            if (sch != None):
                schemln = line
            if (pcb != None):
                pcbln = line
                
        if ((pcbln != "...") and (schemln != "...")):
            shutil.copy2(fpath + "/prj.prj","./prj.prj")
            with open ("./prj.prj","a") as afile:
                afile.write(schemln)
                afile.write(pcbln)
        else:
            print "Error: Current prj file does not have schematic and output-name lines."
            
    else:
            print "Error: prj template file not found"
else:
    print "Error: No project file in current directory"

#//-----------------------------------------------------------------
