# display battery info on your Mac
# see http://blog.justingreer.com/post/45839440/a-tale-of-two-batteries
alias battery='ioreg -w0 -l | grep Capacity | cut -d " " -f 17-50'

# Super useful weather info because asking Siri or Google is mainstream
alias weather='curl wttr.in/London'
alias weather-cluj='curl wttr.in/Cluj'

# Legendary Star Wars movie
alias star-wars='telnet towel.blinkenlights.nl'

# This needs pimpification
alias quote='fortune | cowsay -f tux | lolcat -a'
