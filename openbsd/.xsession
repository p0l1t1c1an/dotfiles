# use UTF8
export LANG=en_US.UTF-8

export PATH=$PATH:$HOME/bin

# default cursor is normal pointer
xsetroot -cursor_name left_ptr

# disable system beep
xset b off

# disable core dumps
ulimit -Sc 0

# if you have a ThinkPad, the following lines enable TrackPoint
# scrolling by dragging with the middle button.
#xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1 
#xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2 
#xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

# Remap button of mice
xmodmap -e "pointer = 1 2 3 8 9 10 11 4 5 6 7 12 13 14 15 16"

# Remap caps to L ctrl
setxkbmap -option caps:escape

# Disable screen turning off for desktop
xset s off
xset s noblank
xset -dpms

# start bspwm
exec bspwm
