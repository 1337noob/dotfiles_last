export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export TERMINAL=urxvt
export EDITOR=vim

setxkbmap "us,ru" ",winkeys" "grp:alt_shift_toggle,grp_led:scroll"

xset r rate 200 60
xset -b

xset dpms 600 600 600

# Map the caps lock key to super...
setxkbmap -option caps:super
# But when it is pressed only once, treat it as escape.
killall xcape 2>/dev/null ; xcape -e 'Super_L=Escape'
# Map the menu button to right super as well.
xmodmap -e 'keycode 135 = Super_R'
# Turn off the caps lock if on since there is no longer a key for it.
xset -q | grep "Caps Lock:\s*on" && xdotool key Caps_Lock

xmodmap ~/.Xmodmap

exec i3
#exec dwm
