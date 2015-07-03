#!/bin/bash
REPORT=`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I`
SSID=`echo "$REPORT" | grep " SSID" | sed -e 's/^.*: //g'`
SIGNAL=`echo "$REPORT" | grep CtlRSSI | sed -e 's/^.*: //g'`
printf "  $SSID [$SIGNAL dBm]"
