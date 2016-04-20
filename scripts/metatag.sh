#! /usr/bin/bash

FILENAME=$2
CUESHEET=$1

cuebreakpoints $CUESHEET | shnsplit -o flac $FILENAME
cuetag $CUESHEET split-track*.flac
lltag --no-tagging --rename %n-%t --yes split-track*.flac
