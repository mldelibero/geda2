#!/usr/bin/env python

"""
This file contains the necessary methods to add a schematic page to an existing geda project
"""

import os
import re
import createTemps

prjFile = "..."
pcbln = "..."
schemln = "..."

for file in os.listdir("./"):
    if file.endswith(".prj"):
        prjFile = file

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
            print "Enter name of new .sch file:"
            afile.write(schemln[0:-1] + " " + raw_input() + '\n')
            afile.write(pcbln)
    
    

else:
    print "Error, no project file found in the current directory"

