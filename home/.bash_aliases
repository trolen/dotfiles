# General
alias rmcore='rmcore.py'
if [ -f /usr/bin/ack-grep ]; then
  alias ack='ack-grep'
fi

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
  for f in /srv/chroot/*; do
    CHROOT=`basename $f`
    alias $CHROOT="schroot -c ${CHROOT}"
  done
fi
