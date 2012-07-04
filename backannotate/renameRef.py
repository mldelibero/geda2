#! /usr/bin/env python2.7
from regex import regex
import re
import fileinput
import sys

def getRefdegs(sub_sch,dir):
    """Search through sub_sch and return all reference designators."""
    refdegs = []
    bltup = tuple([0,0,0,0])
    file = "%s%s0" % (dir,sub_sch)
    reg = re.compile(regex('ref',bltup))
    subs = regex('sref',bltup)

    for line in fileinput.input([file],inplace = True):
        res = reg.findall(line)
        if res:
            pre = res[0][0]
            post = res[0][1]
            refdegs.append((pre,post))

        line = reg.sub(subs,line)
        sys.stdout.write(line)
            
    return refdegs
def formatSch(sub_sch,tmpDir,copies):
    """Format all .sch files in dir to have incremented refdegs"""

    # change .sch files
    bltup = tuple([0,0,0,0])
    reg = re.compile(regex('stdref',bltup))

    for cop in range(0,copies):
        let = chr(ord('A') + cop)
        subs = r"refdes=\1_%sx\2" % (let)
        file = "%s%s%s" % (tmpDir,sub_sch,cop)

        for line in fileinput.input([file],inplace=True):
            mat = reg.sub(subs,line)
            print mat,

def formatPcb(sub_pcb,tmpDir,copies):

    bltup = tuple([0,0,0,0])
   
    for cop in range(copies):
        let = chr(ord('A') + cop)

        reg_conn = re.compile(r"(.*)Connect\(\"(\D+)(\d+)")
        subs_conn = r'\1Connect("\2_%sx\3' % let
        
        reg_ele = re.compile(regex('EleRef',bltup))
        subs_ele = r'Element[\1 \2 "\3_%sx\4" \5' % let

        reg_Net = re.compile(r'Net\("(\w+)" "(.*)"\)')
        subs_Net = r'Net("\1_%sx" "\2")' % let
        reg_Netpgnd = re.compile(r'Net\("PGND"')

        file = "%s%s%s" % (tmpDir,sub_pcb,cop)
        print file

        for line in fileinput.input([file],inplace = True):
            mat_conn = reg_conn.findall(line)
            mat_ele = reg_ele.findall(line)
            mat_Net = reg_Net.findall(line)
            mat_Netpgnd = reg_Netpgnd.findall(line)
            if mat_conn:
                line = reg_conn.sub(subs_conn,line)
            elif mat_ele:
                line = reg_ele.sub(subs_ele,line)
            elif mat_Net:
                if not(mat_Netpgnd):
                    line = reg_Net.sub(subs_Net,line)
            print line,

def renameRef(sub_sch,sub_lay,copies,tmpDir):
#    refdegs = getRefdegs()
    refdegs = []
    formatSch(sub_sch,tmpDir,copies)
    formatPcb(sub_lay,tmpDir,copies)
