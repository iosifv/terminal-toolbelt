#!/usr/bin/env bash
echo " ---===[[[ ${C_YELLOW} Today is a great day to ${C_GREEN}HUSTLE${C_RESET}  ]]]===---"
echo "                                  powered by ${C_YELLOW}Toolbelt${C_RESET}"
echo ""
php -r "echo 'PHP v' . substr(phpversion(), 0, 3);"
echo ""
cat /proc/meminfo | grep "MemFree" && uptime -p