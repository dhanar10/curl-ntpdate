#!/usr/bin/env bash

# Tested with busybox in LibreELEC 10
# Based on https://unix.stackexchange.com/a/494688

UTC_NOW=$(curl -I -s http://1.1.1.1 | grep "Date:" | cut -d " " -f 2-)
UTC_NOW_ISO_8601=$(TZ=UTC date -d "$UTC_NOW" +'%Y-%m-%d %H:%M:%S')
date -u -s "$UTC_NOW_ISO_8601" > /dev/null
date
