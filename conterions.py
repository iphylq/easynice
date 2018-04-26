#!/usr/bin/env python
# This batch is to calculate how many conterions to added under a given mol/L
# You may execute like this: 
# 	python conterions.py [pdb] [bufferthickness] [conditions]
import numpy as np
import sys

# Avogadro N_A = 6.02e23
# number of conterions should be added: N = N_A*V*C
# V: angstrom^3
# C: mol/L

buffer = sys.argv[2]
conditions = sys.argv[3]
fname = sys.argv[1]

f = open(fname)
tmp = f.readline().split()
if tmp[4]=='A':
	f.seek(0)
	data = np.loadtxt(fname,usecols=(6,7,8),dtype=float)
else:
	f.seek(0)
	data = np.loadtxt(fname,usecols=(5,6,7),dtype=float)
f.close()

xmax = data[:,0].max() 
xmin = data[:,0].min()
ymax = data[:,1].max()
ymin = data[:,1].min()
zmax = data[:,2].max()
zmin = data[:,2].min()

V = (xmax - xmin + 2*buffer)*(ymax - ymin + 2*buffer)*(zmax - zmin + 2*buffer)

output = V*conditions*6.02e-4

print "We need:",output,"conterions for the condition:",conditions,"mol/L"

