#!/usr/bin/env bash

# Finds files. Grep is used just for highlighting
#----------------------------
function find-file {
    find . -iname "*$1*" | grep "$1"
}

function find-text {
    grep -rnw . -e "$1"
}

# not working, doesn't take the include variable
function find-text-in {
    grep --include=\.{$1} -rnw . -e "$2"
}

function find-code {
    ack "$1"
}

function find-code-in {
    ack "$2" --type=$1
}

function find-file-types {
    ack --help-types | grep $1
}

alias search-file='find-file'
alias search-text='find-text'
alias search-text-in='find-text-in'
alias search-code='find-code'
alias search-code-in='find-code-in'
alias search-file-types='find-file-types'
