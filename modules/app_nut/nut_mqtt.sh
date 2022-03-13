#!/bin/sh
###############
### nut_mqtt
###############
set -x
UPS=mustek
SS=`/bin/upsc $UPS ups.status`
CLIENT=mustek
   STATUS="0"
# LB - Low Bat
if [ "$SS" = "OB" ] ; then
# OB - On Batt
    STATUS="1"
fi
if [ "$SS" = "OL" ] ; then
# OL - On Line
    STATUS="2"
fi

if [ "$SS" = "OL TRIM" ] ; then
# OL - On Line
    STATUS="3"
fi

TT=ups.status
/usr/bin/mosquitto_pub -i $CLIENT -h localhost -t /ups/$TT -r -m $STATUS
TT=ups.load
/usr/bin/mosquitto_pub -i $CLIENT -h localhost -t /ups/$TT -r -m `/bin/upsc $UPS $TT`
TT=input.voltage
/usr/bin/mosquitto_pub -i $CLIENT -h localhost -t /ups/$TT -r -m `/bin/upsc $UPS $TT`
TT=battery.voltage
/usr/bin/mosquitto_pub -i $CLIENT -h localhost -t /ups/$TT -r -m `/bin/upsc $UPS $TT`
TT=battery.charge
/usr/bin/mosquitto_pub -i $CLIENT -h localhost -t /ups/$TT -r -m `/bin/upsc $UPS $TT`
TT=output.voltage
/usr/bin/mosquitto_pub -i $CLIENT -h localhost -t /ups/$TT -r -m `/bin/upsc $UPS $TT`
