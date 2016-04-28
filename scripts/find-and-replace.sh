#!/bin/bash
SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
source $SCRIPT_PATH/colors

# Input.
FIND=$(echo $1 | sed -e 's/[]\/$*.^|[]/\\&/g')
REPLACE=$(echo $2 | sed -e 's/[\/&]/\\&/g')
DIR=$3

# Build & run the command.
SED_CMD=s/$FIND/$REPLACE/g
echo -ne "${clear}Running sed replacement ${blue}$SED_CMD${clear} on files matching ${blue}$DIR${clear}... "
LC_ALL=C find $DIR -type f -exec sed -i '' -e $SED_CMD {} \;
echo -e "${green}Done${clear}"
