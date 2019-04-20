#!/usr/bin/env bash
echo " ---===[[[ ${C_YELLOW} Today is a great day to ${C_GREEN}HUSTLE${C_RESET}  ]]]===---"
echo "                                  powered by ${C_YELLOW}Toolbelt${C_RESET}"
# echo ""
# php -r "echo 'PHP v' . substr(phpversion(), 0, 3);"
echo ""

function can-i-haz-quote {
    rand=$[$RANDOM % 6]

    case $rand in
        0)  quote='Apple does not suck. Steve Jobs is our lord and saviour.';;
        1)  quote='Crush it!';;
        2)  quote="It's a mindset game!";;
        3)  quote='Productivity = commitment to excellence, intelligent planning and focused effort.';;
        4)  quote='Absorb what is useful, reject what is useless, add what is essentially your own';;
        5)  quote="I justify nothing to nobody about nothing. Whoever has judgement on me, they can't stop me";;
        6)  quote='';;
        7)  quote='';;
        8)  quote='';;
        9)  quote='';;
        10) quote='';;
    esac

    print-quote "$quote"
}

if [ ${OS_NAME} = "osx" ]; then
    can-i-haz-quote
    echo ""
fi

if [ ${OS_NAME} = "ubuntu" ]; then
    free -h && uptime -p
fi
