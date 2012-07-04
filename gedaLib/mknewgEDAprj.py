#!/usr/bin/env python

import os
import createTemps 
#---------------------------------------------------------------------
# Functions
#---------------------------------------------------------------------
def add_usr2prj():
    """ Add user data to prj.prj """
    print "Enter the desired name of the .sch file:"
    sch = raw_input()

    print "Enter the desired name of the .pcb file:"
    pcb = raw_input()

    with open("./prj.prj","a") as file:
        file.write("schematics " + sch+"\n")
        file.write("output-name " + pcb+"\n")
#---------------------------------------------------------------------
#---------------------------------------------------------------------
# variables
prjExists = False
gafExists = False
#---------------------------------------------------------------------
fpath = os.path.dirname(os.path.realpath(__file__))
#---------------------------------------------------------------------
#1. Make sure that there are no project files in the current directory
for files in os.listdir("./"):
    if files.endswith(".prj"):
        print "Warning: a project file already exists in the current directory."
        prjExists = True # Project file exists
if (os.path.exists("./gafrc")):
    print "Warning: gafrc already exists in the current directory."
    gafExists = True
#---------------------------------------------------------------------
#2. Create gafrc and prj.prj if the don't already exist
if (prjExists or gafExists):
    print "Error: Cannot create new project if *.prj or gafrc exists."
    print "Consider running updategEDA.py instead."
else:
    createTemps.create_gafrc()
    createTemps.create_prj_temp()
    add_usr2prj()
#---------------------------------------------------------------------
