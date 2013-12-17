#!/bin/bash

# $1 is the source html file
# $2 is the destination html file
# $3 is the CSS file to be inlined
# $4 is the base URL used for relative assets

cat $1 | premailer --css=$3 --base-url=$4 > $2