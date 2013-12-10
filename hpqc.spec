Name:		hpqc
Version:	1.0.1
Release:	0002
Summary:	Installs the HPQC command line tool
#Copyright:	DIA S.A.
License:	GPL
Source:		hpqc.tgz
Group:		INST_LEVEL_3
AutoReqProv: no
Packager:	Samuel Rodriguez Sevilla <samuel.rodriguez@diagroup.com>
BuildArchitectures: i386
BuildRoot:	/tmp/hpqc-%{version}-%{release}
Requires:	bash curl libxslt dialog

%description
HPQC command line tools grands the hability of query easily the information of
a HPQC site.

%prep
[ -d ${_builddir}/hpqc ] && rm -r ${_builddir}/hpqc
%setup -D -q -n hpqc

%build

%install
[ -d ${RPM_BUILD_ROOT} ] && rm -r ${RPM_BUILD_ROOT}
mkdir -p ${RPM_BUILD_ROOT}
cp -vr %{_builddir}/hpqc/* ${RPM_BUILD_ROOT}

%clean
rm -vrf ${RPM_BUILD_ROOT}


%files
%defattr(-,root,root,-)
%attr(755,root,root) %{_bindir}/hpqc
%attr(755,root,root) %{_sysconfdir}/hpqc/hpqc.config
%attr(755,root,root) %{_sysconfdir}/bash_completion.d/hpqc.bash
%attr(755,root,root) %{_datadir}/hpqc/plugins/hpqc-*
%{_datadir}/hpqc/views/*.view
%{_datadir}/hpqc/filters/*
%{_datadir}/man/en/man1/*
%{_datadir}/man/es/man1/*
%{_datadir}/doc/hpqc/*
%doc

%post

%preun

%postun

%changelog
* Fri Nov 29 2013 Samuel Rodriguez Sevilla <samuel.rodriguez@diagroup.com> - 1.0.0 Added manual pages.
- First attempt of SPEC for HPQC
