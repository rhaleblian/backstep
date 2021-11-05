# BaCKSTEP
Experimentation with software back-porting to NeXTSTEP.

We begin by trying to give NeXT machines an updated GNU userland.

Specific "me want!" goodies:
1. nano
2. a web browser with source that we can attach to cryanc and WRP

## Goals
* Record build process for repeatibility and maintenance;
* Institute a system for transforming source packages into Installer.app packages;
* Release built software as directly usable and tracked products for all NeXTians;
* Be a foundation for a KISS package management (eg list, search, show-dependencies, install-but-do-not-break-me, remove-but-do-not-break-me) process for said NeXTians and their machines.

## General Process

A general gist of @rhaleblian 's process:

1. install enough from the packages in the kb7sqi archive (http://next.haleblian.com/kb7sqi) to modernize the shell and the toolchain, eg. bash, links, sed; notably, install gcc-2.95.3
2. grab the source in question (eg nano) from http://ftp.gnu.org/gnu
3. try to configure it
4. if works, try to build it
5. if not, estimate the delta and make notes: update the SCORBOARD and the save the error messages
