PREFIX = /usr

all:
	@echo Run \'make install\' to install wch.sh

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p wch.sh $(DESTDIR)$(PREFIX)/bin/wch
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/wch

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/wch
