PREFIX ?= /usr

all:
	@echo Please run \'make install\' to start the installation

install:
	cp -r syn_ascii/ $(DESTDIR)$(PREFIX)/bin
	chmod 755 -R $(DESTDIR)$(PREFIX)/bin/syn_ascii
	cp syn.get $(DESDIR)$(PREFIX)/bin
	chmod 755 $(DESDIR)$(PREFIX)/bin/syn.get
	@install -Dm755 syn $(DESTDIR)$(PREFIX)/bin/syn
	@echo Installation is complete

uninstall:
	@rm -r $(DESTDIR)$(PREFIX)/bin/syn_ascii
	@rm -f $(DESDIR)$(PREFIX)/bin/syn.get
	@rm -f $(DESTDIR)$(PREFIX)/bin/syn
	@echo syn is no longer installed
