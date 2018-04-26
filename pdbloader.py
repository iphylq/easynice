#!/bin/env python

# This script is to download pdb files from RCSB Bank
## 	python pdbloader.py 1zih
## OR 	python pdbloader.py 1zih.pdb

import os
import sys

pdbname = sys.argv[1]
if pdbname == ".{4}\.pdb":
	pdbname = pdbname
else:
	pdbname = pdbname+".pdb"
urlstring = "wget https://files.rcsb.org/download/"+pdbname
#print urlstring
output = os.popen(urlstring)
print output.read()

