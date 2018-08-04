#!/bin/bash
##
## TCP Port Capture
### Change the timeout command value to desired duration
#### Duration = LOOPMAX x timeout ( In Minutes )
### Change TCP to desired Port number
#### Currently set to 22
##

LOOPMAX='2'
SERVERNAME="$(uname -a | cut -b '7-17')"
TCPDUMPDIR="/tmp"

cd $TCPDUMPDIR

for I in $(seq 1 $LOOPMAX); do
    timeout 1m tcpdump -w "$TCPDUMPDIR/$SERVERNAME-TCPort$TCPORT-$(date +%m%d%H%M)" 'tcp port 22'
done
