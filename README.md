# BaCKSTEP

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

## Bootstrapping Toolchain

See SCOREBOARD.md.  Collect these up and install them.  For Installer packages, see http://next.haleblian.com/package/m68k .

## General Process

A general gist of @rhaleblian 's process:

1. install packages from the 'toolchain' list in SCOREBOARD.md ;
2. grab the source in question (eg nano) from http://ftp.gnu.org/gnu
3. try to configure it
4. if works, try to build it
5. if not, estimate the delta and make notes: update the SCOREBOARD and the save the error messages

SCOREBOARD.md tracks what builds have been tried and what the toolchain and support tools are.

## Package build dependencies

Recorded as DOT into `dg.dot` as discovered.

!['Requires' Graph](/images/dg.dot.png)

## Which version of a package do we initially, then subsequently, choose?

@rhaleblian 's rule of thumb: 
1. try the oldest available version first. 
2. Then try a version from about 2002.
3. From there, it's a binary-temporal-space-partioning kind of problem; ie. choose something right between the orldest available and 2002 and keep going.
4. But you may need something newer than any of that.

## See Also

https://github.com/rjbrown99/next/wiki/NeXTStep-Software-Ports
http://nextcomputers.org/forum

---
"One small step back for a person, one large step forward for NeXTkind"
