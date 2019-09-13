# Please only use this battery segment if you have material icons in your nerd font (or font)
# Otherwise, use the font awesome one in "User Segments"
prompt_zsh_battery_level() {
  local percentage1=`pmset -g ps  |  sed -n 's/.*[[:blank:]]+*\(.*%\).*/\1/p'`
  local percentage=`echo "${percentage1//\%}"`
  local color='%F{red}'
  local symbol="\uf00d"
  pmset -g ps | grep "discharging" > /dev/null
  if [ $? -eq 0 ]; then
    local charging="false";
  else
    local charging="true";
  fi
  if [ $percentage -le 20 ]
  then symbol='\uf579' ; color='%F{red}' ;
    #10%
  elif [ $percentage -gt 19 ] && [ $percentage -le 30 ]
  then symbol="\uf57a" ; color='%F{red}' ;
    #20%
  elif [ $percentage -gt 29 ] && [ $percentage -le 40 ]
  then symbol="\uf57b" ; color='%F{yellow}' ;
    #35%
  elif [ $percentage -gt 39 ] && [ $percentage -le 50 ]
  then symbol="\uf57c" ; color='%F{yellow}' ;
    #45%
  elif [ $percentage -gt 49 ] && [ $percentage -le 60 ]
  then symbol="\uf57d" ; color='%F{blue}' ;
    #55%
  elif [ $percentage -gt 59 ] && [ $percentage -le 70 ]
  then symbol="\uf57e" ; color='%F{blue}' ;
    #65%
  elif [ $percentage -gt 69 ] && [ $percentage -le 80 ]
  then symbol="\uf57f" ; color='%F{blue}' ;
    #75%
  elif [ $percentage -gt 79 ] && [ $percentage -le 90 ]
  then symbol="\uf580" ; color='%F{blue}' ;
    #85%
  elif [ $percentage -gt 89 ] && [ $percentage -le 99 ]
  then symbol="\uf581" ; color='%F{blue}' ;
    #85%
  elif [ $percentage -gt 98 ]
  then symbol="\uf578" ; color='%F{green}' ;
    #100%
  fi
  if [ $charging = "true" ];
  # then color='%F{green}'; if [ $percentage -gt 98 ]; then symbol='\uf584'; fi
  then color='%F{green}'; if [ $percentage -gt 98 ]; then return; fi
  fi
  echo -n "%{$color%}$symbol" ;
}

prompt_zsh_internet_signal(){

  local symbol="\uf7ba"

  local output=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I)
  local airport=$(echo $output | grep 'AirPort' | awk -F': ' '{print $2}')

  local display_text

  if [ "$airport" = "Off" ]; then
          local color='%F{yellow}'
          display_text="%{$color%}Off"
  else
          local ssid=$(echo $output | grep ' SSID' | awk -F': ' '{print $2}')
          local speed=$(echo $output | grep 'lastTxRate' | awk -F': ' '{print $2}')
          local color='%F{yellow}'

          [[ $speed -gt 100 ]] && color='%F{green}'
          [[ $speed -lt 50 ]] && color='%F{red}'

          # echo -n "%{$color%}\uf7ba $ssid $speed Mb/s%{%f%}" # removed char not in my PowerLine font
          display_text="%{$color%}$speed Mb/s%{%f%}"
          # echo -n "%{$color%}$speed Mb/s%{%f%}"
          # echo -n "📡 %{$color%}$speed%{%f%}"
  fi

  echo -n "%{$color%}$symbol $display_text"
}

# Need to take another look at these to move in a proper place
POWERLEVEL9K_CUSTOM_HAPPY_SYMBOL="happy_symbol"
POWERLEVEL9K_CUSTOM_HAPPY_SYMBOL_BACKGROUND="yellow"
prompt_happy_symbol(){
        rand=$[$RANDOM % 3]
        case $rand in
                0) local symbol="🕊";;
                1) local symbol="🦄";;
                2) local symbol="🐶";;
        esac
        echo -n " $symbol "
}

prompt_zsh_showStatus () {
  state=`osascript -e 'tell application "Spotify" to player state as string'`;
  if [ $state = "playing" ]; then
    artist=`osascript -e 'tell application "Spotify" to artist of current track as string'`;
    track=`osascript -e 'tell application "Spotify" to name of current track as string'`;

    # echo -n "$artist - $track";
    echo -n " $artist - $track";
  fi
}

list_powerlevel_icons () {
increment=0x0001
handle=0xE0A0

for ((i=1;i<=60;i++))
do
   printf  "$handle - \u${handle:2:5}   | "
   handle=$(($handle + $increment))
   handle=$(printf '%#X' $handle)
done
}
