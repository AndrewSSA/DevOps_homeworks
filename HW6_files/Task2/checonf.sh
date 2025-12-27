#!/bin/bash
HOST='google.com'
PORTS='80 443 8080 22'
TIMESTAMP=$(date '+%d-%b-%y %H:%M:%S')
for PORT in $PORTS; do
	echo $TIMESTAMP $(nc -vz -w 5 $HOST $PORT  2>&1 | tail -n1)
done
