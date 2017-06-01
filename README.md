Mastering Alpine Linux
======================

This repo contains the sources of the [pdf slides](./mastering-alpine.pdf).
It is build using latex and my custom theme you can find [here](https://github.com/IxDay/dotfiles/blob/master/config/latex/beamerthemePerso.sty)

The source code of the demo is also available [in the demo directory](./demo)

Abstract
--------

Alpine became the de facto distribution for container setup,
and even more since its maintainer Natanael Copa joined Docker.

This presentation will cover the pros and cons of using it as a dev or production container.
A turn of what is inside those 5MB base container will be done
(will improve the knowledge of how a Linux distribution is created).
A deep dive into Alpine tooling will be also done, with some demo performed around:
build a binary into a container, build a mirror to speed up container rebuilds, build a package and push it to your local mirror.

Misc
----

- Too much text
- Show examples from docker hub -> nginx
- Do a demo
- musl examples of non working projects
	- github.com -> type:issue musl
	- numpy errors
	- qt -> https://github.com/voidlinux/void-packages/blob/master/srcpkgs/qt/patches/qt-musl.patch : fixed
	- phantomjs
	- btrfs
	- grpc

- quick release, security patches vs nix
