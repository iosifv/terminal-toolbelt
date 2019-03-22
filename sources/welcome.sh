#!/usr/bin/env bash
echo " ---===[[[ ${C_YELLOW} Today is a great day to ${C_GREEN}HUSTLE${C_RESET}  ]]]===---"
echo "                                  powered by ${C_YELLOW}Toolbelt${C_RESET}"
echo ""
# php -r "echo 'PHP v' . substr(phpversion(), 0, 3);"
echo ""

if [ ${OS_NAME} = "osx" ]; then
    echo 'Apple does not suck. Steve Jobs is our lord and saviour.'
fi

if [ ${OS_NAME} = "ubuntu" ]; then
    free -h && uptime -p
fi