# toolchain

    autoconf	2.13
    autogen     4.5.14
    automake	1.5
    gawk        3.1.0
    gcc         2.95.3
    libtool     1.4.1
    m4          1.4.4


# libs

    gmp         1.3.2


# build status

    autoconf	2.13	OK
    autoconf	2.70	FAIL	needs newer m4
    emacs	    20.3	MEH 	-nw only, sloooooow
    gawk	    3.1.0 	OK
    git	        2.0.5	CONF	no configure
    glib        2.0.0   CONF    needs pkgconfig
    glibc	    2.0.1	WHOO	umm too much hackery
    glibc	    2.3.2	FAIL	"nextstep3 is not supported"
    gmp	        1.3.2	OK	
    gmp	        3.1.1	FAIL	gcdext.c:700: internal error--unrecognizable insn:
    gmp	        4.1.4	FAIL	./configure: ./config.status: cannot execute
    libtool	    1.4.1	OK
    libtool	    1.5.2	OK
    m4	        1.4.4	OK
    m4	        1.4.8	FAIL	clean-temp.h:113: undefined type, found `mode_t'
    m4	        1.4.10	FAIL	frexp test hangs
    m4	        1.4.19	FAIL	frexp test hangs
    nano	    1.0.0	FAIL	see nano.err
    nano	    1.0.8	FAIL	see nano.err
    nano	    1.2.3	FAIL	proto.h:109: parse error before `search_regexp'
    nano	    2.0.1	FAIL	needs glib2
    nano	    2.0.5	FAIL	needs glib2
    nano	    5.9     CONF	frexp test hangs
    nettle	    2.1     MEH     no private key support (need gmp>3.1)
    nettle	    3.4     FAIL	configure hangs at "whether frexp works..."
