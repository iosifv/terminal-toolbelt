#!/usr/bin/env bash

POWERLEVEL9K_MODE='nerdfont-complete'

#----------------------------
# Powerlevel9k configs
# Available elements: os_icon ip battery time
#----------------------------

POWERLEVEL9K_CUSTOM_WIFI_SIGNAL="zsh_wifi_signal"
POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_BACKGROUND="gray"

zsh_wifi_signal(){
        local output=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I)
        local airport=$(echo $output | grep 'AirPort' | awk -F': ' '{print $2}')

        if [ "$airport" = "Off" ]; then
                local color='%F{yellow}'
                echo -n "%{$color%}Wifi Off"
        else
                local ssid=$(echo $output | grep ' SSID' | awk -F': ' '{print $2}')
                local speed=$(echo $output | grep 'lastTxRate' | awk -F': ' '{print $2}')
                local color='%F{yellow}'

                [[ $speed -gt 100 ]] && color='%F{green}'
                [[ $speed -lt 50 ]] && color='%F{red}'

                # echo -n "%{$color%}\uf7ba $ssid $speed Mb/s%{%f%}" # removed char not in my PowerLine font
                echo -n "%{$color%}\uf7ba $speed Mb/s%{%f%}"
                # echo -n "%{$color%}$speed Mb/s%{%f%}"
                # echo -n "📡 %{$color%}$speed%{%f%}"
        fi
}

POWERLEVEL9K_CUSTOM_HAPPY_SYMBOL="happy_symbol"
POWERLEVEL9K_CUSTOM_HAPPY_SYMBOL_BACKGROUND="yellow"
prompt_happy_symbol(){
        rand=$[$RANDOM % 3]
        case $rand in
                0) local symbol="🕊";;
                1) local symbol="🦄";;
                2) local symbol="🐶";;
        esac
        echo -n " $symbol"
}

# source ~/.fonts/*.sh
# POWERLEVEL9K_MODE="awesome-fontconfig"
# ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_SHORTEN_STRATEGY="truncate_to_last"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER="|"
# POWERLEVEL9K_DIR_PACKAGE_FILES=(package.json composer.json)
POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{gray}/%F{black}"

# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(happy_symbol context dir vcs)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status dir_writable custom_wifi_signal ram load background_jobs)

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir_writable custom_wifi_signal ram load background_jobs context dir vcs newline)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status happy_symbol)
