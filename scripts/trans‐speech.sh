#!/bin/sh
text=`xclip -selection primary -o`
trans=`trans -p :ru -brief "$text"`
notify-send "$trans"
