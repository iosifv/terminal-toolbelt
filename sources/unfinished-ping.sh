
# I NEED TO FINISH THIS...
function net-test {

source colors


HEADER_COLOR=$YELLOW
CASE_COLOR=$BCYAN
WARN_COLOR=$LGREEN
ERROR_COLOR=$BRED

OK=$GREEN"[OK]"$NOCOLOR

FAIL=$RED"[FAIL]"$NOCOLOR
LAST_RESULT=0


unset GREP_OPTIONS


LOCAL_IP=`hostname -I | awk '{print $1}'`
LOCAL_GW=`ip route | awk '/default/ { print $3 }'`
LOCAL_DNS=`nslookup server | grep Server | cut -d ":" -f 2 | sed -e 's/^[ \t]*//'`

CASE_WIDTH='%-64s'


function PrintCase {
	printf "$CASE_COLOR%-64s" "$1"
}


# ping wrapper
function Ping {
	local LAST_RESULT=0
	local IP=$2
	[ -z ${IP} ] && IP=$1

	PrintCase "ping $1"
	ping -q -c 1 -w 5 $IP > /dev/null 2>&1
	LAST_RESULT=$?
	[[ $LAST_RESULT == 0 ]] && echo -e $OK || echo -e $FAIL
	return $LAST_RESULT
}


# curl wrapper
function Curl {
	local LAST_RESULT=0
	local checkApi=$2
	local IP=
	[ -z ${IP} ] && IP=$1

	PrintCase "curl $1"
	[[ $checkApi != "api" ]] &&
		local response=`curl --insecure --connect-timeout 4 --max-time 10 --silent $IP` ||  #> /dev/null 2>&1
		local response=`curl --insecure --connect-timeout 4 --max-time 10 --silent \
				-H "Content-Type: application/json" \
				-X POST -d '{"method":"stats", "params": {"rig_id":"-1", "passwd": "1"}}' \
				$IP/worker/api`

	LAST_RESULT=$?
	if [[ $LAST_RESULT == 0 ]]; then
		if [[ $checkApi != "api" ]]; then
			echo -e $OK
		else
			local respCheck=`echo "$response" | jq .error.code 2>/dev/null`
			[[ $respCheck == '' || $respCheck == 'null' ]] && echo -e $FAIL || echo -e $OK
		fi
	else
		echo -e $FAIL
	fi

	return $LAST_RESULT
}


# nslookup wrapper
function NSLookup {
	local LAST_RESULT=0
	local IP=
	[ -z ${IP} ] && IP=$1

	PrintCase "nslookup $1"
	nslookup $IP > /dev/null 2>&1
	LAST_RESULT=$?
	[[ $LAST_RESULT == 0 ]] && echo -e $OK || echo -e $FAIL
	return $LAST_RESULT
}


# check host with dns resolving, ip, http, https cases
function Connection {
	local LAST_RESULT=0
	local RESULT=0
	local host=$1
	local checkApi=$2

	NSLookup $1
	[ $? -ne 0 ] && echo -e $ERROR_COLOR"Please check your DNS server $DNS"$NOCOLOR

	Ping $1
	[ $? -ne 0 ] && echo -e $ERROR_COLOR"Please check your connection settings"$NOCOLOR

	Curl "http://$1" $checkApi
	[ $? -ne 0 ] && echo -e $ERROR_COLOR"HTTP connection failed. Please check Firewall rules or connection setup."$NOCOLOR

	Curl "https://$1" $checkApi
	[ $? -ne 0 ] && echo -e $ERROR_COLOR"HTTPS (SSL) connection failed. Please check Firewall rules or connection setup."$NOCOLOR

	return $LAST_RESULT
}


# connections test cases
function Connections {
	echo -e "${YELLOW}Checking network connection:${NOCOLOR}"
	Ping "$LOCAL_GW (Gateway)" $LOCAL_GW
	[ $? -ne 0 ] && echo -e $ERROR_COLOR"Failed to ping router. Please check your router and physical connection."$NOCOLOR

	Ping "$LOCAL_DNS (DNS)" $LOCAL_DNS
	[ $? -ne 0 ] && echo -e $ERROR_COLOR"Please check your DNS server $LOCAL_DNS"$NOCOLOR

	Ping "1.1.1.1 (Cloudflare)" "1.1.1.1"
	[ $? -ne 0 ] && echo -e $ERROR_COLOR"Failed to ping Cloudflare DNS. Please check your internet connection"$NOCOLOR

	Connection "hiveos.farm"


	echo
	echo -e "${YELLOW}Checking connection to Hive servers:${NOCOLOR}"
	echo
	echo -e "${WHITE}>>> api.hiveos.farm${NOCOLOR}"
	Connection "api.hiveos.farm" api
	Curl "https://api.hiveos.farm:8443" $2
	[[ $? -ne 0 ]] && echo -e "${ERROR_COLOR}HTTPS (SSL) on port 8443 connection failed. Please check Firewall rules or connection setup.${NOCOLOR}"
	echo
	echo -e "${WHITE}>>> paris.hiveos.farm${NOCOLOR}"
	Connection "paris.hiveos.farm" api
	echo
	echo -e "${WHITE}>>> amster.hiveos.farm${NOCOLOR}"
	Connection "amster.hiveos.farm" api
	echo
	echo -e "${WHITE}>>> helsinki.hiveos.farm${NOCOLOR}"
	Connection "helsinki.hiveos.farm" api
}


# traceroute wrapper
#function Trace {
#    IP=$1
#	traceroute $IP
#}


# restarting network interfaces
#function RestartNetworking {
#    if [ $LAST_RESULT -eq 1 ];
#    then
#    	echo -ne "$WARN_COLOR    connections was fail: restart network"
#    	LAST_RESULT=0
#    	sudo ifdown -a && sudo ifup -a &&
#    	sudo service network-manager restart && echo -e $OK || { LAST_RESULT=1; echo -e $FAIL; }
#        echo -ne "$NOCOLOR"
#    else
#    	exit $LAST_RESULT
#    fi
#}


# ip route | awk '/default/ { print $3 }'


# header
#echo -e "$HEADER_COLOR=== Hive Network Test ===$NOCOLOR"

echo -e "${YELLOW}Local Network Configuration:${NOCOLOR}"

echo -e "IP:        ${PURPLE}$LOCAL_IP${NOCOLOR}"
echo -e "Gateway:   $LOCAL_GW"
echo -e "DNS:       $LOCAL_DNS"
echo


# test connections to hive hosts
Connections



# if connections was fail try restart network interfaces
#RestartNetworking
# test connections again
#Connections

# Traceroute to hosts for debuging if connections was not fixed
#if [ $LAST_RESULT -eq 1 ];
#then
#	sleep 5
#	echo
#    echo -e "$ERROR_COLOR network was not fixed"
#    echo
#	Trace "api.hiveos.farm       "
#	echo
#	Trace "amster.hiveos.farm    "
#else
#	exit $LAST_RESULT
#fi



exit $LAST_RESULT
}
