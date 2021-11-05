
# goals

* hackable browser with source
* language-aware texteditor
* TLS 1.2/1.3


# prereqs to install

Most come from pk7sqi or other binary-only sources.

    bash 2.05
    gawk 3.1.0 (from source)
    gcc 2.95.3
    glib 1.2.10
    gmake 3.8.1
    uname 1.0


# builds

    ce		1.3.0	OK
    git		2.0.5	FAIL	needs autoconf
    glib	2.0.0.	CONF	needs pkgconfig
    micro_inetd	14.2014	OK
    perl	5.6.2	WIP	passes configure
    pkg-config 	0.10	WIP	passes configure, but implies glib1
    pkg-config	0.24	FAIL	needs non-crashing perl
    ue		4.0	OK

