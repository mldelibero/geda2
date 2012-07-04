#! /usr/bin/env python2.7

# This holds the initialization functions for the backanno project.

import os
import subprocess

tempdir = "./temp_backAnno/"

def backup(schem,layou,prjPath):
    print "backing up main files"
    if os.path.exists("%s%s.bak" % (prjPath,schem)) or os.path.exists("%s%s.bak" % (prjPath,layou)):
        cpSch = """rm %s%s.bak""" % (prjPath,schem)
        cpPcb = """rm %s%s.bak""" % (prjPath,layou)
        subprocess.call(['sh','-c',cpSch])
        subprocess.call(['sh','-c',cpPcb])

    cpSch = """cp %s%s %s%s.bak""" % (prjPath,schem,prjPath,schem)
    cpPcb = """cp %s%s %s%s.bak""" % (prjPath,layou,prjPath,layou)
    subprocess.call(['sh','-c',cpSch])
    subprocess.call(['sh','-c',cpPcb])
    
def crTempDir():
    """ Create a temporary directory

        Need to add error checking to see if directory already exists"""

    if (os.path.exists("./%s" % tempdir)):
        a = 1
    else:
        mkdir = """mkdir %s""" % (tempdir)
        subprocess.call(['sh','-c',mkdir])

    return tempdir

def copy_sub(sub_sch,sub_pcb,copies,prjdir,tmpdir):
    """Copy the sub circuit files into the temp directory"""
    for n in range(copies):
        copy_sch = """cp %s%s %s%s%s""" % (prjdir,sub_sch,tempdir,sub_sch,n)
        copy_pcb = """cp %s%s %s%s%s""" % (prjdir,sub_pcb,tempdir,sub_pcb,n)

        subprocess.call(['sh','-c',copy_sch])
        subprocess.call(['sh','-c',copy_pcb])

def init(schem,layou,sub_sch,sub_lay,copies,prjPath):
    """Run the initialization scheme for the backanno project

        *Backup target files
        *Create a temporary folder for temp files
        *Copy subcircuit files into the tempdir
    """

    backup(schem,layou,prjPath)
    tempdir = crTempDir()
    copy_sub(sub_sch,sub_lay,copies,prjPath,tempdir)
    
    return tempdir
