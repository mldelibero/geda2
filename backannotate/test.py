#! /usr/bin/env python2.7

import main
import init
import renameRef
import copy_sch
import copy_pcb
import cleanup
import draw
import getCrnPts

import subprocess
from init import tempdir as tmpDir

def ls_path(path):
    shPrjDir = """ls -al %s""" % path
    subprocess.call(['sh','-c',shPrjDir])

def main_info__test():
    print "Info Return: ", info
    print "Project Path: ", projPath
    print "Schematic File: ",schem
    print "Layout File: ", lay
    print "sub Schematic File: ", sub_sch
    print "sub Layout File: ", sub_lay
    
# Init functions
def init_backup__test():
    """Run the backup script and check to see that it worked

        You should see the backup files in the project directory"""
    init.backup(schem,lay,projPath)
    ls_path(projPath)
    
def init_crTempDir__test():
    tempdir = init.crTempDir()
    ls_path(tempdir)

def init_copy_sub__test():
    init.copy_sch(sub_sch,sub_lay,copies,projPath,tmpDir)

def init__test(schem,layou,sub_sch,sub_lay,copies,prjPath):
    print "\ninit_test:"
    init.init(schem,lay,sub_sch,sub_lay,copies,projPath)

# renameRef testing functions
def renameRef_getRefdegs__test(sub_sch,tmpDir):
    """Test for reference designators in .sch file and print"""
    refdegs = renameRef.getRefdegs(sub_sch,tmpDir)
    print "refdegs: ",refdegs
def renameRef_formatSch__test(sub_sch,tmpDir,copies):
    """Run formatSch() and print out the refdegs from each file"""
    renameRef.formatSch(sub_sch,tmpDir,copies)
    for cop in range(copies):
        print "File: %s%s%s" % (tmpDir,sub_sch,cop)
        script = """cat %s%s%s | grep refdes*""" % (tmpDir,sub_sch,cop)
        subprocess.call(['sh','-c',script])
        print "\n"
def renameRef_formatPcb__test(sub_pcb,tmpDir,copies):
    renameRef.formatPcb(sub_pcb,tmpDir,copies)

def renameRef__test(sub_sch,sub_pcb,copies,tmpDir):
    renameRef.renameRef(sub_sch,sub_pcb,copies,tmpDir)
        

#draw
def draw_drawBoxPcb__test(file,pts):
    """Call drawbox pcb and launch pcb.
        You should expect to see a box at the coordinates"""
    draw.drawBox_pcb(file,pts)
    openPcb = """pcb %s""" % file
    subprocess.call(['sh','-c',openPcb])

def draw_drawBox_Sch__test(sch_file,pts):
    """Run drawbox sch and launch gschem.
        You should expect to see a box at the coordinates"""
    draw.drawBox_sch(sch_file,pts)
    openSch = """gschem %s""" % sch_file
    subprocess.call(['sh','-c',openSch])

# copySch
def copySch__test(schem,sub_sch,copies,projPath,tmpPath):
    copy_sch.copy_sch(schem,sub_sch,copies,projPath,tmpPath)
    sch_file = "%s%s" % (projPath,schem)
    openSch = """gschem %s""" % sch_file
    subprocess.call(['sh','-c',openSch])
    revertSch = """cp %s.bak %s""" % (sch_file,sch_file)
    subprocess.call(['sh','-c',revertSch])

def copyPcb__test(lay,sub_lay,copies,projPath,tmpPath):
    copy_pcb.copy(lay,sub_lay,copies,projPath,tmpPath)
    '''
    pcb_file = "%s%s" % (projPath,lay)
    openPcb = """pcb %s""" % pcb_file
    subprocess.call(['sh','-c',openPcb])
    revertPcb = """cp t.pcb %s%s""" % (projPath,pcb_file)
    subprocess.call(['sh','-c',revertPcb])
    '''
def copyPcb_getShift__test(pcb_file,subpcb_file,copies):
    sfile = "%s%s" % (subpcb_file,cop)
    shift = copy_pcb.getShift(pcb_file,sfile,copies)
    print sfile
    print shift
    
# getCrnPts
def getCrnPtsPcb__test(pcb_file):
    pts = getCrnPts.get_MinMax_xy_pcb(pcb_file)
    print pts
    print "pcb file", pcb_file
    draw.drawBox_pcb(pcb_file,pts)
    openPcb = """pcb %s""" % pcb_file
    print "openpcb: ",open
    subprocess.call(['sh','-c',openPcb])

def getCrnPtsSch__test(sch_file):
    pts = getCrnPts.get_MinMax_xy_sch(sch_file)
    print pts
    draw.drawBox_sch(sch_file,pts)
    openSch = """gschem %s""" % sch_file
    subprocess.call(['sh','-c',openSch])

if __name__=="__main__":
    main_info_test = False
    init_backup_test = False
    init_crTempDir_test = False
    init_copy_sub_test = False
    init_test = True
    renameRef_getRefdegs_test = False
    renameRef_formatSch_test = False
    renameRef_formatPcb_test = False
    renameRef_test = True
    draw_drawBoxPcb_test = False
    draw_drawBoxSch_test = False
    copySch_test = False
    copyPcb_test = True
    copyPcb_getShift_test = False
    getCrnPtsPcb_test = False
    getCrnPtsSch_test = False


    info = main.getinfo()
    projPath = info[0]
    schem = info[1]
    lay = info[2]
    sub_sch = info[3]
    sub_lay = info[4]
    copies = info[5]

    #Init testing
    if main_info_test:
        main_info__test()
    if init_backup_test:
        init_backup__test()
    if init_crTempDir_test:
        init_crTempDir__test()
    if init_copy_sub_test:
        init_copy_sub__test()
    if init_test: # must be before rename ref
        init__test(schem,lay,sub_sch,sub_lay,copies,projPath)
    if renameRef_getRefdegs_test:
        renameRef_getRefdegs__test(sub_sch,tmpDir)
    if renameRef_formatSch_test:
        renameRef_formatSch__test(sub_sch,tmpDir,copies)
    if renameRef_formatPcb_test:
        renameRef_formatPcb__test(sub_lay,tmpDir,copies)
    if renameRef_test:
        print "\nRenameRef_test:"
        renameRef__test(sub_sch,sub_lay,copies,tmpDir)
    if copySch_test:
        copySch__test(schem,sub_sch,copies,projPath,tmpDir)
    if copyPcb_test:
        print "\nCopyPcb_test:"
        copyPcb__test(lay,sub_lay,copies,projPath,tmpDir)
    if copyPcb_getShift_test:
        pfile = "%s%s" % (projPath,lay)
        sfile = "%s%s" % (tmpDir,sub_lay)
        copyPcb_getShift__test(pfile,sfile,copies)

    if draw_drawBoxPcb_test:
        file = "%s%s" % (projPath,sub_lay)
        draw_drawBoxPcb__test(file,[10000,10000,40000,40000])
    if draw_drawBoxSch_test:
        file = "%s%s" % (projPath,schem)
        draw_drawBox_Sch__test(file,[10000,10000,40000,40000])
    if getCrnPtsPcb_test:
        file = "%s%s" % (projPath,lay)
        getCrnPtsPcb__test(file)
    if getCrnPtsSch_test:
        file = "%s%s" % (projPath,schem)
        getCrnPtsSch__test(file)

