#! /usr/bin/env python 2.7
'''
This file holds all of the regular expressions used in this project.
'''
regDict = {}
# getCrnPtnts.py --> get_MinMax_xy_pcb()
regDict['elLn'] = r"ElementLine \[(-?\d+) (-?\d+) (-?\d+) (-?\d+) (.*)"
regDict['elArc'] = r"ElementArc \[(-?\d+) (-?\d+) (-?\d+) (-?\d+) (.*) "
regDict['pin'] = r"Pin\[(-?\d+) (-?\d+) (.*)"
regDict['pad'] = r"Pad\[(-?\d+) (-?\d+) (-?\d+) (-?\d+) (-?\d+) (-?\d+) (.*)"
regDict['befAt'] = r"Attribute\("
regDict['Ele'] = r"Element\[(\".*\") (\d+) (\d+) (.*)"
regDict['line'] = r"Line\[(\d+) (\d+) (\d+) (\d+) (.*)"
regDict['lay1'] = r"^Layer\(1 \""
regDict['lay2'] = r"^Layer\(2 \""
regDict['lay3'] = r"^Layer\(3 \""


# renameRef 
regDict['ref'] = r"refdes=(\D+)(\d+)"
regDict['sref'] = r"refdes=\1_Ax\2"
regDict['Aref'] = r"refdes=(\D+)_Ax(\d+)" # refdegs like C_Ax1
regDict['stdref'] = r"refdes=(\D+)(\d+)" # refdegs like C1
regDict['net'] = r'Net\("(\w+)" "(.*)"\)'
regDict['netpgnd'] = r'Net\("(PGND)"'

#formatPcb
regDict['EleRef'] = r"Element\[(\".*\") (\".*\") \"(\D+)(\d+)\" (.*)"

def regex(key,tup):
    """Return a regular expression from a dict referenced by key"""
    """The string will still need to be compiled by re.compile()"""
    
    """tup --> tuple. This allows data to be inserted in each str."""

    
    #...
    regDict['l1'] = "    Line[%s %s %s %s 1000 2000 \"cleanline\"]" % (tup[0],tup[1],tup[0],tup[3])

    regDict['l2'] = "    Line[%s %s %s %s 1000 2000 \"cleanline\"]" % (tup[0],tup[3],tup[2],tup[3])
    
    regDict['l3'] = "    Line[%s %s %s %s 1000 2000 \"cleanline\"]" % (tup[2],tup[3],tup[2],tup[1])
    
    regDict['l4'] = "    Line[%s %s %s %s 1000 2000 \"cleanline\"]" % (tup[2],tup[1],tup[0],tup[1])


    return regDict[key]
     
