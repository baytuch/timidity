#!/bin/sh

CFLAGS="-fno-strict-aliasing -Wall -pipe"

./configure --prefix=/usr --mandir=/usr/share/man --infodir=/usr/share/info \
            --sysconfdir=/etc --with-default-path=/etc/timidity \
            --with-lispdir=/usr/share/emacs/site-lisp/timidity-el \
            --with-x \
            --with-tcl-includes=/usr/include/tcl \
            --with-tk-includes=/usr/include/tcl \
            --enable-audio=default,oss,nas,esd,jack,vorbis,flac,speex,alsa \
            --with-default-output=default \
            --enable-interface=ncurses,emacs,xaw,alsaseq \
            --enable-dynamic=slang,tcltk,vt100,xskin,gtk \
            --enable-server --enable-network --enable-spectrogram --enable-wrd \
            --with-nas-library=/usr/lib/x86_64-linux-gnu/libaudio.so

make

