# st version
VERSION = 0.8.5

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = $(PREFIX)/man

X11INC = /usr/local/include
X11LIB = /usr/local/lib

# freetype
FREETYPELIBS = -lfontconfig -lXft
FREETYPEINC  = /usr/local/include/freetype2

PKG_CONFIG = pkg-config

# includes and libs
INCS = -I$(X11INC) -I$(FREETYPEINC)
LIBS = -L$(X11LIB) -lm -lrt -lX11 -lutil $(FREETYPELIBS)

# flags
STCPPFLAGS = -DVERSION=\"$(VERSION)\" -D_XOPEN_SOURCE=600
STCFLAGS = $(INCS) $(STCPPFLAGS) $(CPPFLAGS) $(CFLAGS)
STLDFLAGS = $(LIBS) $(LDFLAGS)

# OpenBSD:
#CPPFLAGS = -DVERSION=\"$(VERSION)\" -D_XOPEN_SOURCE=600 -D_BSD_SOURCE
#LIBS = -L$(X11LIB) -lm -lX11 -lutil -lXft \
#       `$(PKG_CONFIG) --libs fontconfig` \
#       `$(PKG_CONFIG) --libs freetype2`
#MANPREFIX = ${PREFIX}/man

# compiler and linker
# CC = c99
