#!/usr/bin/env bash

function tb-help-fs-manage {
    print-status "fs-manage:"
    echo "dir-sizes = lists directory sizes [runs du]"
    echo "dir-info  = interactive directory info [runs ncdu]"
    echo "copy      = runs ditto verbose"
    echo "move      = runs ditto verbose"
    echo "delete    = runs rm -rfv"
}

# Files
#----------------------------
function dir-sizes {
    du -skxh *
    echo "${C_YELLOW}===================================${C_GREEN}"
    echo "Total: " && du -skxh
}

alias dir-info='ncdu'

# Copy/Move files or directories with verbose output
#----------------------------
function copy {
	ditto -V $1 $2
}
function move {
  ditto -V $1 $2
  rm -rfv $1
}
function delete {
  rm -rfv $1
}
