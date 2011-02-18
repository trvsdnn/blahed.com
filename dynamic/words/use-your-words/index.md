title: Use Your Words
id: 3
date: 2/17/2011

-------------------------------------META

Use Your Words
----------------------------------------------

Had a brief conversation today with a few guys at the office. We talked a bit about Linux and BSD as desktop operating systems.

I introduced myself to Linux at a very young age and used it as my main OS for a few years. Back in the old days, if I can remember that far back, *nix was a jungle. You downloaded tarballs and ran <code>./configure; make; make install</code> or you installed a boring rpm. There was a lot of searching, installing dependencies, breaking shit, fixing shit... all of that, just to get something to run, and then you didn't even know what you did to get it running. I thought it was cool at the time, it felt <code>1337</code>.

At some point I was searching for info on how to become a "hacker" and I came across the logo of a little devil guy. I thought the logo was cute and soon discovered that it was a daemon and represented FreeBSD... I had to have it, so I started the download and after about 10 nights of 56k fury, I had my ISO.

FreeBSD was big for me because it had the ports tree, which basically made finding and installing software easy. You have a ports directory that had the software categorized. All you had to do was find the folder for the thing that you wanted to install and <wbr><code>make; make install</code>. Everything just worked because the port had all of the patches and dependencies ready to go. I remember this making me very happy and thinking, "They thought about this."

To the point. I think the ports tree was pretty smart. Yeah, there are better things out there now, but not everything is better, and it should/could be.

### The Stupid

Okay, so the ports tree made sense to me and was a breath of fresh air. That was years ago. Flash forward to now. I've been using OS X but I have a VPS account that hosts a few things, the VPS uses Linux, I need to install some software, <code>apt-get</code> seems to be the standard, not good:

    apt-get install ruby            # makes sense
    apt-get remove ruby             # kinda makes sense, though "apt-get" is kinda weird
    dpkg -l                         # huh? a different tool to see installed packages?
    apt-cache search ruby           # yet another command?? cache??

Also, this is just insane:

> It's easy. All you need to do is edit the file that contains the list of repositories.
> sudo nano /etc/apt/sources.list
>
> You need to uncomment the lines that contain 'universe' to enable the universe repository. To enable the multiverse repository add 'multiverse' to the same lines.
>
> Should look something like this when you are done.
> deb http://archive.ubuntu.com/ubuntu breezy universe multiverse
> deb-src http://archive.ubuntu.com/ubuntu breezy universe multiverse
>
> deb http://security.ubuntu.com/ubuntu breezy universe multiverse
> deb-src http://security.ubuntu.com/ubuntu breezy universe multiverse
> Then if you refresh the apt-get repository lists using
> sudo apt-get updateYou are ready to grab software from those repositories.

<cite>From here: [http://ubuntuforums.org/archive/index.php/t-153806.html](http://ubuntuforums.org/archive/index.php/t-153806.html)</cite>

### The Easy

I don't have to explain much, just look:
    # rubygems
    gem install frank           # clear
    gem uninstall frank         # clear
    gem list                    # clear
    gem search frank            # clear
    gem search --remote frank   # kinda clear

    # homebrew
    brew install node           # clear
    brew uninstall node         # clear
    brew list                   # clear
    brew search nethack         # clear

### The End

Just think a little and use your words. Take some time when naming things and try to make it clear. Obviously there are reasons apt-get is the way it is... those reasons aren't clear to me, but I ain't even tryin' to hate.