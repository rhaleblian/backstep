
# Phase 1 installation

These are built with only `uname` installed.

    bash        2.0.0
    fileutils   3.16
    gawk        3.0.6
    grep        2.0
    libiconv    1.6.1
    libtool     1.1
    make        3.7.5
    m4          1.4.1
    patch       2.5.4
    perl5       004_05
    pkgconfig   0.3.0
    sed         2.0.5
    sh-utils    1.16
    textutils   1.22
    wget        1.4.5
    
# Phase 2 installation

These are built with tools installed from phase 1.

    autoconf    2.13
    automake    1.4-p6
    gcc         2.95.3

# Build results

    autoconf    2.13        OK
    autoconf    2.53
    autoconf    2.54        CONF    needs perl>=5.005_03
    autoconf    2.62        CONF    needs m4>=1.4.5
    autoconf    2.70        CONF    needs newer m4
    automake    1.4         OK
    automake    1.4-p6      OK
    automake    1.5         CONF    needs perl>=5.005
    bash        2.0.0       OK
    ce          1.3.0       OK
    emacs       20.3        MEH     -nw only, sloooooow
    gawk        3.0.6       OK
    gawk        3.1.0       OK
    gcc         2.95.3 <--
    git         2.0.5       FAIL    needs autoconf
    glib        1.2.10 <--
    glib        2.0.0       CONF    needs pkgconfig
    glibc       2.0.1       WHOO    umm too much hackery
    glibc       2.3.2       FAIL    "nextstep3 is not supported"
    gmp         1.3.2       OK	
    gmp         3.1.1       FAIL    gcdext.c:700: internal error--unrecognizable insn:
    gmp         4.1.4       FAIL    ./configure: ./config.status: cannot execute
    libiconv    1.6.1       OK
    libnext     166e7       OK
    libtool     1.1.1       OK
    libtool     1.4.1       OK
    libtool     1.5.2       OK
    m4          1.4.4       OK
    m4          1.4.5       FAIL    see log
    m4          1.4.8       FAIL    clean-temp.h:113: undefined type, found `mode_t'
    m4          1.4.10      CONF    frexp test hangs
    m4          1.4.19      CONF    frexp test hangs
    make        3.7.5       OK
    micro_inetd 14.2014     OK
    nano        1.0.0       FAIL    see gmake.err
    nano        1.0.8       FAIL    see gmake.err
    nano        1.2.3       FAIL    proto.h:109: parse error before `search_regexp'
    nano        2.0.1       FAIL    needs glib2
    nano        2.0.5       FAIL    needs glib2
    nano        5.9         CONF    frexp test hangs
    nettle      2.1         MEH     no private key support (need gmp>3.1)
    nettle      3.4         FAIL    hangs at "whether frexp works..."
    perl        5.004_3     OK
    perl        5.004_05    OK
    perl        5.005_03    FAIL    see err file
    perl        5.005_04    FAIL    see err file
    perl        5.6.2       MEH     too new wrt OPENSTEP
    pkgconfig   0.3.0       OK 
    pkgconfig   0.9.0       FAIL    glib-1.2.8
    pkgconfig   0.10        FAIL    glib-1.2.8
    pkgconfig   0.23        FAIL    glib-1.2.10
    pkgconfig   0.24        FAIL    glib-1.2.10
    pkgconfig   0.28        CONF    needs autoconf>=2.62
    sed         2.0.5       OK
    ue          4.0         OK
    wget        1.4.5       OK

