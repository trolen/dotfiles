# General
alias rmcore='rmcore.py'

# Development
if [ -f /usr/local/eclipse/eclipse ]; then
  alias eclipse='SQT_GTK3=0 /usr/local/eclipse/eclipse'
fi
if [ -f /usr/bin/colormake ]; then
  alias make='colormake -j8'
fi

# Chroots
if [ -f /usr/bin/schroot ]; then
  alias schroot='schroot -p'
  if [ -f /srv/chroot/lenny ]; then
    alias lenny='schroot -c lenny'
  fi
  if [ -f /srv/chroot/trusty-i386 ]; then
    alias trusty-i386='schroot -c trusty-i386'
  fi
  if [ -f /srv/chroot/xenial-i386 ]; then
    alias trusty-i386='schroot -c xenial-i386'
  fi
fi
