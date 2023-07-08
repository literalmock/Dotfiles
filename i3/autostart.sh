
# Autostart applications
# /usr/lib/x86_64-linux-gnu/polkit-mate/polkit-mate-authentication-agent-1 &
/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &
# nitrogen --restore; sleep 1; 
#~/bin/polybar-i3 &
bash ~/.config/polybar/launch.sh --forest &
feh --bg-fill ~/.config/backgrounds/patterndarktexture.jpg &
picom -b &
numlockx on &
#nm-applet &
# volumeicon &
dunst &
# blueman-applet &
xinput set-prop "SynPS/2 Synaptics TouchPad" "Synaptics Tap Action" 1, 1, 1, 1, 1, 1, 1,
#xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1 &
# sxhkd
sxhkd -c ~/.config/i3/sxhkd/sxhkdrc &
