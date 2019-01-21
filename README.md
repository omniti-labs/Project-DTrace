# Welcome to Project DTrace #

The goal of Project DTrace is to provide robust [DTrace](http://opensolaris.org/os/community/dtrace/) integration against as many popular open source projects as possible.  While it isn't extremely difficult to push patches into open source projects, it does take time to get to know the community and/or maintainer.  Embracing the culture of the project is crucial to being well-received and to gain a "grease the wheels" level of patch acceptance.  If we were producing a patch against a single project or a handful of projects it would make sense to engage with those communities.  However, we are talking about a much larger number of open source projects and it is simply intractable to interface with that many communities and maintain the right relationships and processes.

This project takes the vendor/distributor approach to patching.  We want a consistent (in philosophy and approach) set of patches that can be applied to just about any popular open source application to make it a first-class DTrace citizen by the use of SDTs in user space.  If the various projects like the changes, we'll be happy to work with them to have them pushed upstream and "graduated" from our project to theirs.

Welcome, and please help!

## Philosophy ##

DTrace SDT probes should be "baked in."  Modules that can be loaded to provide the DTrace facilities aren't acceptable.  While a good proof-of-concept, they simply don't provide the level of integration we desire.  When looking at a critical performance problem in production, knowing that you could reconfigure your application to allow for DTrace doesn't help you look at the problem you currently have.  Information must always be a DTrace script away.  As such, patches should be against the source of the application and not a module (e.g. mod_dtrace for Apache).  DTrace belongs in modules only when you instrument the module itself.

## Process ##

Find the HEAD of the development branch of the repository of the project you want to patch and the current latest stable release.  Develop against the latest stable release and *optionally* against the HEAD of the development branch.  Think hard about the probe points you add and how they will be used by others.

*DO NOT* over-instrument.  Remember that there is already a `pid` provider in DTrace and if you add a probe at every user-space C function, you've added very little value.  Probe wisely; put probes where important tasks start and end.  Attempt to make the probe's arguments accessible to the average user.  When that is not possible, at least make them accessible to someone familiar with the code base.

## Resources ##

 * See [docs](docs/) for information about the applications we've patched
 * [Dtrace documentation](http://wikis.sun.com/display/DTrace/Documentation)
 * [User-space SDTs](http://wikis.sun.com/display/DTrace/Statically+Defined+Tracing+for+User+Applications User-space SDTs)


