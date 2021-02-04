OUT=xss-events
CFLAGS+=-std=c99 -pedantic -Wall -Wextra -Wno-unused-parameter
LDLIBS:=-lX11 -lXss -lXext
CFILES=xss-events.c


PREFIX?=/usr/local
BINPREFIX?=$(PREFIX)/bin


all: $(OUT)

$(OUT): $(CFILES)
	$(CC) $(CFLAGS) $(CFILES) -o $(OUT) $(LDLIBS)

install:
	mkdir -p "$(DESTDIR)/usr/local"
	cp -p $(OUT) "$(DESTDIR)$(BINPREFIX)"

uninstall:
	rm -f "$(DESTDIR)$(BINPREFIX)"/$(OUT)

clean:
	rm -f $(OUT) $(OBJ)

.PHONY: all install uninstall clean
