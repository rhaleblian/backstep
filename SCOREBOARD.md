
# goals

* hackable browser with source
* language-aware texteditor
* TLS 1.2/1.3

# toolchain

    autoconf	2.13
    autogen     4.5.14
    automake	1.4
    gcc         2.95.3
    glib        1.2.10      from pk7sqi
    gmake       3.8.1       from pk7sqi
    libtool     1.4.1
    m4          1.4.4

# libs/support

    bash        2.05        from pk7sqi
    gawk        3.1.0
    gmp         1.3.2
    grep        2.5.3       from pk7sqi
    perl        5.004_3
    uname       1.0         from pk7sqi

# builds

    autoconf	2.13	OK
    autoconf    2.62    CONF    needs m4>=1.4.5
    autoconf	2.70	CONF	needs newer m4
    automake    1.4     OK
    automake    1.5     CONF    needs perl>=5.005
    ce          1.3.0   OK
    emacs	    20.3	MEH 	-nw only, sloooooow
    gawk	    3.1.0 	OK
    git         2.0.5   FAIL	needs autoconf
    glib        2.0.0   CONF	needs pkgconfig
    glibc       2.0.1	WHOO	umm too much hackery
    glibc       2.3.2	FAIL	"nextstep3 is not supported"
    gmp	        1.3.2	OK	
    gmp	        3.1.1	FAIL	gcdext.c:700: internal error--unrecognizable insn:
    gmp	        4.1.4	FAIL	./configure: ./config.status: cannot execute
    libtool	    1.4.1	OK
    libtool	    1.5.2	OK
    m4	        1.4.4	OK
    m4          1.4.5   WIP
    m4	        1.4.8	FAIL	clean-temp.h:113: undefined type, found `mode_t'
    m4	        1.4.10	CONF	frexp test hangs
    m4	        1.4.19	CONF	frexp test hangs
    micro_inetd 14.2014	OK
    nano	    1.0.0	FAIL	see gmake.err
    nano	    1.0.8	FAIL	see gmake.err
    nano	    1.2.3	FAIL	proto.h:109: parse error before `search_regexp'
    nano	    2.0.1	FAIL	needs glib2
    nano	    2.0.5	FAIL	needs glib2
    nano	    5.9     CONF	frexp test hangs
    nettle	    2.1     MEH     no private key support (need gmp>3.1)
    nettle	    3.4     FAIL	configure hangs at "whether frexp works..."
    perl        5.004_3 OK
    perl        5.6.2   MEH	    too new wrt OPENSTEP
    pkg-config 	0.10    WIP	    passes configure, but implies glib1
    pkg-config  0.24    WIP     argh it builds a local glib-1.2.10
    pkg-config  0.28    CONF    needs autoconf>=2.62
    ue          4.0	    OK
