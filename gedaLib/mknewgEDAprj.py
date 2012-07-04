#!/usr/bin/env python


print "hello world"

'''
'''

import os
import shutil

#//-----------------------------------------------------------------
# variables
prjExists = False
gafExists = False
#//-----------------------------------------------------------------
fpath = os.path.dirname(os.path.realpath(__file__))
#//-----------------------------------------------------------------
#1. Make sure that template project file exists.
if not (os.path.exists(fpath + "/prj.prj")):
    print "Error: project template file does not exist."
if not (os.path.exists(fpath + "/gafrc")):
    print "Error: gafrc template file does not exist."
#//-----------------------------------------------------------------
#2. Make sure that there are no project files in the current directory
for files in os.listdir("./"):
    if files.endswith(".prj"):
        print "Warning, a project file already exists in the current directory."
        prjExists = True # Project file exists
if (os.path.exists("./gafrc")):
    print "Warning, gafrc already exists"
    gafExists = True
#//-----------------------------------------------------------------
#3. Look for files in current directory, but if not found, ask usr for:
#    schematic file name
#    pcb file name

print "Enter the desired name of the .sch file:"
sch = raw_input()

print "Enter the desired name of the .pcb file:"
pcb = raw_input()

#//-----------------------------------------------------------------
#4. Create the prj file in the cur dir
shutil.copy2(fpath + "/prj.prj","./prj.prj")

with open("./prj.prj","a") as file:
    file.write("schematics " + sch+"\n")
    file.write("output-name " + pcb+"\n")
#//-----------------------------------------------------------------
#5. Create the gafrc and gschemrc files
shutil.copy2(fpath + "/gafrc","./gafrc")
#//-----------------------------------------------------------------
#6. End the program
#//-----------------------------------------------------------------
