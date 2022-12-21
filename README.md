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


## Building using this repo

Create an empty build directory and symlink or copy this repo into it as a subdir:

    mkdir my-build-dir
    cd my-build-dir
    ln -s /whereever/you-put/this-repo/backstep .

Also create a file `env` here which defines PREFIX, the installation
prefix for all packages as per configure's --prefix option.

    echo 'PREFIX=/opt/backstep' > env

Run the Phase 0 build script from the root of your build directory:

    ./backstep/0-build

This builds packages which Phase 1 will/may use.

Install Phase 0 builds into /usr/local :

    ./backstep/0-install

Then add `/usr/local/bin` to your `PATH` and make sure you current
shell has that change.  Now you can do the same spiel for Phase 1:

    ./backstep/1-build
    ./backstep/1-install


## General build development process

1. fetch the source in question.  For GNU packages, use http://ftp.gnu.org/gnu ;
2. create a directory for it as `$name-$version` and copy `build_template` and `install_template` into it, as `build` and `install`, setting `name` and `version`;
3. get a build to work via `./backstep/$name-$version/build`;
4. make notes: update the `SCOREBOARD.md` and the save the result and error messages.
5. install successful builds with `./backstep/$name-version$/install`.

Consult existing package dirs as examples of the above recipe.
 
`SCOREBOARD.md` tracks what builds have been tried and what the toolchain and support tools are.


## Creating a package definition dir

Given a package foo-1.0:

    mkdir foo-1.0
    cp build_template foo-1.0/build
    cp install_template foo-1.0/install

Edit `build` and `install` to match foo-1.0 and make them executable.

This dir also optionally holds patch files and a `url` file denoting the 
tarball's origin.

The tarball for the package should be kept locally at

    warehouse/foo-1.0.tar.gz


## Package build dependencies

Recorded as DOT into `dg.dot` as discovered.

!['build-requires' graph](/images/dg.dot.png)


## Which version of a package do we initially, then subsequently, choose?

1. try the oldest available version first. 
2. Then try a version from about 2002.
3. From there, it's a binary-temporal-space-partioning kind of problem;
   ie. choose something right between the orldest available and 2002 and
   keep going.
4. But you may need something newer than any of that.

Of course, the above assumes no pre-existing intelligence about a best version
to try.


## See Also

https://github.com/rjbrown99/next/wiki/NeXTStep-Software-Ports

http://www.nextcomputers.org/forums

---
"One small step back for a person, one large step forward for NeXTkind"

