# BaCKSTEP

[![Makefile CI](https://github.com/yoyodyne-research/BaCKSTEP/actions/workflows/makefile.yml/badge.svg)](https://github.com/yoyodyne-research/BaCKSTEP/actions/workflows/makefile.yml)

Experimentation with software back-porting to NeXTSTEP.

We begin by trying to give NeXT machines an updated GNU userland.

The current focus is on NEXTSTEP 3.3 on NeXT hardware aka

    m68k-next-nextstep3
    
OPENSTEP 4.2 aka
    
    m68k-next-nextstep4

is a secondary focus.

## Goals

* Record build process for repeatibility and maintenance;
* Institute a system for transforming source packages into Installer.app packages;
* Release built software as directly usable and tracked products for all NeXTians;
* Be a foundation for a KISS package management (eg list, search, show-dependencies, install-but-do-not-break-me, remove-but-do-not-break-me) process for said NeXTians and their machines.

## Initial toolchain

See `SCOREBOARD.md`.  Collect these up and install them.  For Installer packages, see http://next.haleblian.com/BaCKSTEP/toolchain/ .

## General Process

1. fetch the source in question.  For GNU packages, use http://ftp.gnu.org/gnu ;
2. try to configure it with `bootstrap`;
3. if works, try to build it with `gmake`;
4. if not, estimate the delta and make notes: update the `SCOREBOARD.md` and the save the error messages.
5. install successful builds with `gmake install`.
 
`SCOREBOARD.md` tracks what builds have been tried and what the toolchain and support tools are.

## Package build dependencies

Recorded as DOT into `dg.dot` as discovered.

!['Requires' Graph](/images/dg.dot.png)

## Which version of a package do we initially, then subsequently, choose?

@rhaleblian 's rule of thumb: 
1. try the oldest available version first. 
2. Then try a version from about 2002.
3. From there, it's a binary-temporal-space-partioning kind of problem; ie. choose something right between the orldest available and 2002 and keep going.
4. But you may need something newer than any of that.

Of course, the above assumes no pre-existing intelligence about a best version to try.

## See Also

https://github.com/rjbrown99/next/wiki/NeXTStep-Software-Ports

http://nextcomputers.org/forum

---
"One small step back for a person, one large step forward for NeXTkind"
