all:
	[ -d hpqc ] && rm -r hpqc || true
	[ -d rpmbuild ] && rm -r rpmbuild || true 
	mkdir hpqc
	mkdir -p rpmbuild/{BUILD,BUILDROOT,RPMS,SPECS,SRPMS,SOURCES}
	cp hpqc.spec rpmbuild/SPECS/hpqc.spec
	cp -r etc usr hpqc
	tar cvfz rpmbuild/SOURCES/hpqc.tgz hpqc
	rm -rf hpqc
	rpmbuild --define "_topdir $(shell pwd)/rpmbuild" -ba rpmbuild/SPECS/hpqc.spec
	cp rpmbuild/RPMS/i386/hpqc-1.0.0-0003.i386.rpm .
	rm -r rpmbuild
