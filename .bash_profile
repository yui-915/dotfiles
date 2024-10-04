[[ -f ~/.bashrc ]] && . ~/.bashrc

# auto start X11 on tty1
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi
