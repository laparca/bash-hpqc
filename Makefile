VERSION=$(shell grep Version hpqc.spec | sed -n -e 's/^Version:[^0-9]*\(.*\)$$/\1/p')
RELEASE=$(shell grep Release hpqc.spec | sed -n -e 's/^Release:[^0-9]*\(.*\)$$/\1/p')

all:
	echo "Nothing to do in target all"

rpm:
	[ -d hpqc ] && rm -r hpqc || true
	[ -d rpmbuild ] && rm -r rpmbuild || true 
	mkdir hpqc
	mkdir -p rpmbuild/BUILD rpmbuild/BUILDROOT rpmbuild/RPMS rpmbuild/SPECS rpmbuild/SRPMS rpmbuild/SOURCES
	cp hpqc.spec rpmbuild/SPECS/hpqc.spec
	cp -r etc usr hpqc
	tar cvfz rpmbuild/SOURCES/hpqc.tgz hpqc
	rm -rf hpqc
	rpmbuild --define "_topdir $(shell pwd)/rpmbuild" -ba rpmbuild/SPECS/hpqc.spec
	cp rpmbuild/RPMS/i386/hpqc-$(VERSION)-$(RELEASE).i386.rpm .
	rm -r rpmbuild

# Debian package generation
install:
	mkdir -p $(DESTDIR)
	cp -rv usr $(DESTDIR)
	cp -rv etc $(DESTDIR)
	ronn --date=$$(date +%Y-%m-%d) --roff man/man1/*.md
	mkdir -p $(DESTDIR)/usr/share/man/man1/
	for i in man/man1/*1; do gzip < $$i > $(DESTDIR)/usr/share/man/man1/$$(basename $$i).gz || exit 1; rm $i; done

deb:
	git archive --format tar.gz --prefix bash-hpqc-$(VERSION)/ HEAD > ../bash-hpqc_$(VERSION).orig.tar.gz
	dpkg-buildpackage -rfakeroot -g

%:
	echo "Running rule $@"
