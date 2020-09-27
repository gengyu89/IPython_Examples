#!/bin/bash
# script for running all ngl examples created by: Yu Geng
# 2020-09-27


# function to echo status messages
smsg() { printf "\e[1m[%s] %s\e[m\n" "$(date +%T)" "$*"; }

# set paths to dependencies
outdir=./output/ngl_report

# examine output directory
mkdir -p $outdir


# smsg "Running camse1..."
# python ./src/camse1.py

smsg "Running geodesic..."
python ./src/geodesic.py

smsg "Running newcolor1..."
python ./src/newcolor1.py

smsg "Running newcolor4..."
python ./src/newcolor4.py

smsg "Running newcolor6..."
python ./src/newcolor6.py

# smsg "Running NUG_unstructured_contour_cellfill_PyNGL..."
# python ./src/NUG_unstructured_contour_cellfill_PyNGL.py

smsg "Running seam..."
python ./src/seam.py

smsg "Running topo1..."
python ./src/topo1.py

smsg "Done. Files saved as $outdir/*.png"

