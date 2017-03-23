Mastering alpine
================

What is alpine
--------------
	- ligthview distrib based on busybox toolbox and musl-libc
	- can be used as a distribution and come with a grsec kernel
	- usefull for container building, provides tooling
		(package manager, supported by docker) and small footprint
Why using it
------------
	- masterize your toolchain, avoid using third party unknown containers
	- can create small containers, 15-20MB for a binary one is common,
		~50MB for a python one
When not using it
-----------------
	- based on musl-libc -> limitations here (some package do not compile)
	- when building big images the small footprint is no longer an advantage
		(cross compiler can be really huge)
	- package library is not exhaustive (10G big), this is not a debian distrib
		if a lot of dependencies are involved do not use it
Tips and tricks
---------------
	- apk add -t
	- build a mirror
	- build a package
