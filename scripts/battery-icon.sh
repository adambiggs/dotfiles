SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
BATTERY_PERCENTAGE=`$SCRIPT_PATH/battery-status/scripts/battery_percentage.sh`
BATTERY_VALUE="${BATTERY_PERCENTAGE%?}"

if [ "$BATTERY_VALUE" -gt "75" ]; then
  ICON=" "
elif [ "$BATTERY_VALUE" -gt "50" ]; then
  ICON=" "
elif [ "$BATTERY_VALUE" -gt "25" ]; then
  ICON=" "
elif [ "$BATTERY_VALUE" -gt "10" ]; then
  ICON=" "
else
  ICON=" "
fi

echo "$ICON $BATTERY_PERCENTAGE"
