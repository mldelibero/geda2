#! /usr/bin/env python2.7

#This is the main file for the backannotation project. Run this file to run the project.


'''
Order of events:

    *Create backups for the current files
    *Create a directory for temporary files
    *Make necessary number of copies of .sch and .pcb file
    *Rename the reference designators in the copied subcircuits
    *Move the copied .sch subschematics into the specified schematic
    *Move the copied .pcb sublayouts into the specifide layout
    *Delete the temporary files
'''

from init import init
from renameRef import renameRef
from copy_sch import copy_sch
from copy_pcb import copy
from cleanup import cleanup
from init import tempdir as tmpDir

projectPath= "/Users/mldelibero/case/masters/hightemp/board/siggen/"
#projectPath= "/Users/mldelibero/case/masters/stressCap/buckDemo/board/"
#projectPath= "./ex1/"
schematic = "temp.sch"
layout = "temp.pcb"
sub_schematic = "siggen.sch"
sub_layout = "gen.pcb"

numCop = 4 # Total number of instances desired in the overall project

def getinfo():
    """Return the variables initialized above"""
    return tuple([projectPath,schematic,layout,sub_schematic,sub_layout,numCop])

if __name__ == "__main__":
    tempPath = init(schematic,layout,sub_schematic,sub_layout,numCop,projectPath)
    renameRef(sub_schematic,sub_layout,numCop,tmpDir)
    copy_sch(schematic,sub_schematic,numCop,projectPath,tmpDir)
    copy(layout,sub_layout,numCop,projectPath,tmpDir)
    cleanup(tempPath)

