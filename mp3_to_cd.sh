#!/usr/bin/env bash
d=/tmp/goburncd_$RANDOM; mkdir $d && for i in *.[Mm][Pp]3; do lame --decode "$i" "$d/${i%%.*}.wav"; done; cdrecord -pad $d/* && rm -r $d

