#!/bin/bash

f1=$1
f2=$3
r1=$2
r2=$4

awk '{print $'$2'}' ${f1} > ${f1}.new
awk '{print $'$4'}' ${f2} > ${f2}.new

paste ${f1}.new ${f2}.new > joinrow.txt
rm -f ${f1}.new ${f2}.new
