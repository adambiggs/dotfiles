#!/bin/bash
DIR=$1
PATTERN=$2

LC_ALL=C find $DIR -type f -exec sed -i '' -e $PATTERN {} +
