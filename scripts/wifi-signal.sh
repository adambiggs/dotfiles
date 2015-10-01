#!/bin/bash
REPORT=`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I`
SSID=`echo "$REPORT" | grep " SSID" | sed -e 's/^.*: //g'`
SIGNAL=`echo "$REPORT" | grep CtlRSSI | sed -e 's/^.*: //g'`

if [ "$SIGNAL" -gt "-60" ]; then
  WIFI_BARS="●●●●"
elif [ "$SIGNAL" -lt "-60" ]; then
  WIFI_BARS="●●●◯"
elif [ "$SIGNAL" -lt "-70" ]; then
  WIFI_BARS="●●◯◯"
elif [ "$SIGNAL" -lt "-80" ]; then
  WIFI_BARS="●◯◯◯"
else
  WIFI_BARS="◯◯◯◯"
fi

MSG="$SSID $WIFI_BARS"

if [ -z "$SSID" ];then
  MSG="No WiFi"
fi

printf "  $MSG"
