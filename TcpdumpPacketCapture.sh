LOOPMAX='2'

DURATION='15'

TCPORT='20104'

SERVERNAME="$(uname -a | cut -b '7-17')"

 

cd /tmp

 

for I in $(seq 1 $LOOPMAX); do

    timeout $DURATIONm tcpdump -w "$SERVERNAME_TCPort$TCPORT_$(date +%m%d%H%M)" 'tcp port $TCPORT'

done
