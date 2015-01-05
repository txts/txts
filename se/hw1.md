---
title: Homework1
mantra: Cause we get more done if we work together
---

# Motivation #

Q: What can students SE learn that will still be relevant in a 10 years,
20 years from now?

A: How to work "effectively" in teams.

The premise of this exercise is that team members share products in
some _version controlled_ environment that contains some
_configuration management_ 
tools. It should be also possible to reflect on this work to identify
project _bad smells_ that can prompt process improvement.

+ _Version control_  Version control is a system that records changes to a file or set of files over time so that you can recall specific versions later.
A version control system with web support enables a team to share code,
track changes made by other people, and (in the worse case) back out from
bad changes to a prior useful version.
+ _Configuration management_
+ _Bad smells_
+ _Process improvement_

# The Task #

Build a set of web-based slides that introduce your
team. The first slide should list some funky name;
 the second slide should be a list of links to the rest
of the material;
the next few slides should outline your planned two
month project;

Store the raw materials for those slides in a
version control systems (where different members
write different parts).

Implement a configuration management system such
that anyone can build or update your slides by:

```
make update      # calls an update to the web-based VC system
make configure   # applies the configuration management system.
```

Note that:

+ If the above is called twice, the second call should do very little
(since it was all done the first time).
+ If the above is called, then random files are deleted in the WWW directory,
  then the second call should do some minimal changes to fix up the slides.
  

# Todo #

Set up:

+ Get a Github account (not the private NC state one, but one of the free
  and public ones at github.com).
+ Get an ISP that serves static web pages. For NcState students, set up
  your [WWW4](https://oit.ncsu.edu/afs/www-setup) space.
+ Get a working version of [pandoc](http://johnmacfarlane.net/pandoc/)
  (which can translate between Markdown and many other formats).
