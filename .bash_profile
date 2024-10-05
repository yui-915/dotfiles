# auto start X11 on tty1
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi

# otherwise run .bashrc (which runs fish)
. ~/.bashrc
