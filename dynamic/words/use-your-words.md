title: Use Your Words
id: 3
date: 2/17/2011

-------------------------------------META

## [Use Your Words](/words/use-your-words)

Had a brief conversation today with a few of the developers at Medium. We talked a bit about Linux and BSD as desktop operating systems.

I was using Linux as a desktop OS by like age 13. Back in the old days, *nix was a jungle, (it still is in my opinion). Building from source was how you got most software, and it isn't incredibly different today...

    > ./configure
    > make
    > make install
    
You did a lot of searching, installing dependencies, breaking things, reading, fixing things &mdash; just to get something to run &mdash; and then you didn't even know what you did to get it running. I thought it was cool at the time.

At some point I decided to try BSD. I had heard it was more UNIX like, whatever that meant. FreeBSD had the [ports tree](http://www.freebsd.org/doc/en_US.ISO8859-1/books/handbook/ports-using.html), which basically made finding and installing software easier. The ports tree was a directory that had software categorized by type. All you had to do was `cd` into the folder of the port that you wanted to install and `make; make install`. Everything just worked because the port had all of the patches and dependencies ready to go. I remember thinking, "They thought about this."

I think the ports tree was pretty smart. It had flaws, and still does, but it was pretty great back then. We have great things like apt now, and though it is much, much better &mdash; it still seems very ancient (and ultimately confusing). From the [wikipedia page](http://en.wikipedia.org/wiki/Advanced_Packaging_Tool):

> There is no single "apt" program; apt is itself the package name containing the set of tools (and requiring the libraries) that support its functionality. A significant part of apt is a C++ library of functions (another package known as libapt) which are used by these related front-end programs for dealing with packages, such as apt-get and apt-cache. They are commonly used in examples due to their simplicity and ubiquity; apt-get and apt-cache are of "important" priority in all current Debian releases, and are therefore installed in a default Debian installation. Apt can be functionally considered to be a front-end to dpkg, and a friendlier front end to this than dselect. While dpkg performs actions on individual packages, apt tools manage relations (especially dependencies) between them, as well as sourcing and management of higher-level versioning decisions (release tracking and version pinning).

### The Problem

Apt is one of the "standards" for installing software in Linux. `apt-get` and `apt-cache` are common ways to interface with apt, and this is where I see the problem:

    > apt-get install ruby   # makes sense
    > apt-get remove ruby    # kinda makes sense, "-get" seems odd
    > dpkg -l                # a different tool to see installed packages?
    > apt-cache search ruby  # yet another command? cache?

From the outside, this is a bit confusing &mdash; not so bad if you know how it all works. Sure, there are other interfaces to apt, but this is sort of the "standard", and I think it says a lot about command line interfaces. Often, we don't spend the time to _really_ think about our interfaces and how people will use them. A little extra thought goes a long way.

### A few better examples

The `gem` CLI is pretty clear and well done. And `homebrew` is another well thought out CLI:

    # rubygems
    > gem install frank           # clear
    > gem uninstall frank         # clear
    > gem list                    # clear
    > gem search frank            # clear
    > gem search --remote frank   # kinda clear

    # homebrew
    > brew install node           # clear
    > brew uninstall node         # clear
    > brew list                   # clear
    > brew search nethack         # clear

### The End

Naming things is hard:

>  There are only two hard things in Computer Science: cache invalidation and naming things.
> 
> &mdash; Phil Karlton

A lot of people talk about naming classes and method names clearly &mdash; great advice &mdash; but unless you're building a DSL or something that a developer will be using, you're usually the only person that will see those class and method names.

However, if you're developing a piece of software with a command line interface "normal" people will see it, so put a little extra thought into how a user will interact with it.