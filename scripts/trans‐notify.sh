#!/bin/sh
text=`xclip -selection primary -o`
trans=`trans :ru -brief "$text"`
notify-send "$trans"
