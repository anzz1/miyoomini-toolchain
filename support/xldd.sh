#!/bin/sh
xldd() { if [ -z "$1" ]; then echo 'xldd: usage: xldd <elf>'; else if [ -z "$CROSS_COMPILE" ]; then echo 'xldd: error: $CROSS_COMPILE not defined'; else if [ -x "$CROSS_COMPILE""readelf" ]; then echo "xldd: "$1""; "$CROSS_COMPILE""readelf" -d "$1" | grep "Shared library:"; else echo "xldd: error: "$CROSS_COMPILE""readelf" is not executable"; fi; fi; fi; }
