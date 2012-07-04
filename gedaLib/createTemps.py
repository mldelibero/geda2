#! /usr/bin/env python

"""
This file contains the necessary methods to create the gafrc and prj.prj template files from list of available directories.
"""
import os

fpath = os.path.dirname(os.path.realpath(__file__))
sympath = os.path.join(fpath,"symbols")

#--------------------------------------------------------------------
def create_gafrc():
""" Create a gafrc file in the calling directory """
    symDirs = os.listdir(sympath)
    with open ("./gafrc","w") as gafrc:
        for dir in symDirs:
            gafrc.write(os.path.join(sympath,dir) + "\n")
#--------------------------------------------------------------------



if __name__== "__main__":
    create_gafrc()
