# wallpaper
nitrogen --restore

# idk tbh
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# compositor
picom &

# screenshot tool
flameshot &

# window manager
qtile start
