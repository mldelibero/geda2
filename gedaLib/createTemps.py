#! /usr/bin/env python

"""
This file contains the necessary methods to create the gafrc and prj.prj template files from list of available directories.
"""
import os

fpath = os.path.dirname(os.path.realpath(__file__))
sympath = os.path.join(fpath,"symbols")
pcbpath = os.path.join(fpath,"footprints")

#--------------------------------------------------------------------
def create_gafrc():
    """ Create a gafrc file in the calling directory """
    symDirs = os.listdir(sympath)
    with open ("./gafrc","w") as gafrc:
        gafrc.write(sympath + "\n")
        for dir in symDirs:
            gafrc.write(os.path.join(sympath,dir) + "\n")
#--------------------------------------------------------------------
def create_prj_temp():
    """ Create a prj.prj file in the calling directory """
    pcbDirs = os.listdir(pcbpath)
    with open ("./prj.prj","w") as prj:
        prj.write("elements-dir " + pcbpath + "\n")
        for dir in pcbDirs:
            prj.write("elements-dir " + os.path.join(pcbpath,dir) + "\n")

def add_usr2prj():
    """ Add user data to prj.prj """
    print "Enter the desired name of the .sch file:"
    sch = raw_input()

    print "Enter the desired name of the .pcb file:"
    pcb = raw_input()

    with open("./prj.prj","a") as file:
        file.write("schematics " + sch+"\n")
        file.write("output-name " + pcb+"\n")
    
if __name__== "__main__":
    create_prj_temp()
    
