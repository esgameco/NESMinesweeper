#!/bin/bash

: '
    install.sh

    Installs tools required to start development.
    Installs the following tools:
        1. cc65
'

    ## Helper Functions

# Do if x does not exist
doIf() {
    if [[ ! -e $1 ]]; then
        $2
    fi
}

    ## Initial Commands ##

# Make directories
dirs=('./tools')
for dir in ${dirs[@]}; do
    doIf ${dir} "mkdir ${dir}"
done

    ## Main Script ##

# Install cc65
doIf ./tools/cc65 "git clone https://github.com/cc65/cc65 ./tools/cc65"
