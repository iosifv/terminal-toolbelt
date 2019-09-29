#!/usr/bin/env bash
echo " ---===[[[ ${C_YELLOW} Today is a great day to ${C_GREEN}HUSTLE${C_RESET}  ]]]===---"
echo "                                  powered by ${C_YELLOW}Toolbelt${C_RESET}"
# echo ""
# php -r "echo 'PHP v' . substr(phpversion(), 0, 3);"
echo ""

function can-i-haz-quote {
    rand=$[$RANDOM % 9]

    case $rand in
        0)  quote='No such thing as spare time, no such thing as free time, no such thing as down time. All you got is life time. Go!';;
        1)  quote='Crush it!';;
        2)  quote="It's a mindset game!";;
        3)  quote='Productivity = commitment to excellence, intelligent planning and focused effort.';;
        4)  quote='Absorb what is useful, reject what is useless, add what is essentially your own';;
        5)  quote="I justify nothing to nobody about nothing. Whoever has judgement on me, they can't stop me";;
        6)  quote='The way of success is the way of continuous pursuit of knowledge.';;
        7)  quote='The person who stops studying merely because he has finished school is forever hopelesly doomed to mediocrity no matter what may be his calling.';;
        8)  quote='You are 100fucking% in charge of your life. Stop bitching!';;
        9)  quote='';;
        10) quote='Apple does not suck. Steve Jobs is our lord and saviour.';;
    esac

    print-quote "$quote"
}

if [[ "${OS_NAME}" == "osx" ]]; then
    can-i-haz-quote
    echo ""
fi

# =====================================
# For Ubuntu server stuff please do this:
# touch $HOME/.hushlogin
# =====================================

if [[ ${OS_NAME} == "ubuntu" ]]; then

    # Displays cool ubuntu logo and some extra info about the system
    echo "" && screenfetch
    echo ""

    # Displays system disk usage
    echo "" && export TERM=xterm; inxi -D
    # echo "" && free -h

    # Shows uptime, obviously
    echo "" && uptime -p

    # Shows weather
    echo ""
    ansiweather -l london -s true
    ansiweather -l cluj-napoca -s true
fi

