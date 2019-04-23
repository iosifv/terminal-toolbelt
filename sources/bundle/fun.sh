#!/usr/bin/env bash

function tb-help-fun {
    print-status "fun:"
    echo "star-wars: displays epic movie in the terminal"
    echo "quote: show a fortune quote from tux with cowsay"
    echo "cowyell: overengineered cowsay. Takes a string as argument"
}

# Legendary Star Wars movie
#----------------------------
alias star-wars='telnet towel.blinkenlights.nl'

# This needs pimpification
#----------------------------
alias quote='fortune | cowsay -f tux | lolcat -a'

function cowyell {
    rand=$[$RANDOM % 44]

    case $rand in
        1)  cow="beavis.zen" ;;
        2)  cow="bong";;
        3)  cow="budfrogs";;
        4)  cow="bunny";;
        5)  cow="cheese";;
        6)  cow="cower";;
        7)  cow="daemon";;
        8)  cow="default";;
        9)  cow="dragon";;
        10) cow="dragon-and-cow";;
        11) cow="elephant";;
        12) cow="elephant-in-snake";;
        13) cow="eyes";;
        14) cow="flaming-sheep";;
        15) cow="ghostbusters";;
        16) cow="head-in";;
        17) cow="kiss";;
        18) cow="kitty";;
        19) cow="koala";;
        20) cow="kosh";;
        21) cow="luke-koala";;
        22) cow="meow";;
        23) cow="milk";;
        24) cow="moofasa";;
        25) cow="moose";;
        26) cow="mutilated";;
        27) cow="ren";;
        28) cow="satanic";;
        29) cow="sheep";;
        30) cow="skeleton";;
        31) cow="small";;
        32) cow="sodomized";;
        33) cow="stegosaurus";;
        34) cow="stimpy";;
        35) cow="supermilker";;
        36) cow="surgery";;
        37) cow="telebears";;
        38) cow="three-eyes";;
        39) cow="turkey";;
        40) cow="turtle";;
        41) cow="tux";;
        42) cow="udder";;
        43) cow="vader";;
        44) cow="vader-koala";;
        0)  cow="www";;
    esac

    cowsay -f "$cow" $1 | lolcat
}
