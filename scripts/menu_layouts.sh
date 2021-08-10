#!/bin/bash
#
# (c) 2021, Gustavo AlbarrAn

#PATHLAYOUT=~/tmux_layouts/*.conf
PATHLAYOUT="${path_layouts}/*.conf"

LAYOUT=()
i=0

for file in $PATHLAYOUT
do
    ((i=i+1))
    filename="$(basename $file)"
    LAYOUT+=("${filename%.*}")
    LAYOUT+=("$i")
    LAYOUT+=("source-file -q $file")
done

tmux display-menu -T "#[align=centre]#[fg=colour214] Layouts " -x 0 -y S "${LAYOUT[@]}"
