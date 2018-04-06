# st version
VERSION = 0.8.1

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = $(PREFIX)/man

X11INC = /usr/local/include
X11LIB = /usr/local/lib

# freetype
FREETYPELIBS = -lfontconfig -lXft
FREETYPEINC  = /usr/local/include/freetype2

# includes and libs
INCS = -I$(X11INC) -I$(FREETYPEINC)
LIBS = -L$(X11LIB) -lm -lrt -lX11 -lutil $(FREETYPELIBS)

# flags
CPPFLAGS = -DVERSION=\"$(VERSION)\" -D_XOPEN_SOURCE=600
STCFLAGS = $(INCS) $(CPPFLAGS) $(CFLAGS)
STLDFLAGS = $(LIBS) $(LDFLAGS)

# compiler and linker
# CC = c99

