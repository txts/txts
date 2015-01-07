---
title: Homework1
mantra: Cause we get more done if we work together
---


## Goals 

Learn how to work effectively in teams via

+ Version control systems (Github)
+ Configuration management systems (UNIX Makefile)
+ Virtualization (NcState Virtual Computing Lab)
+ Text-based markup tools (Pandoc, markdown, gnuplot, latex, bibtex)

## What to Do 

Build a very simple static web site that is:

+ Feed from a Github repo (so any context committed to the repo updates the website)
+ That is shared with your team mates via Github (so multiple people can work on the site)
+ That is rendered via text-based mark up tools (so it can be maintained very quickly)
+ That is configured using Make (so anyone can copy and set it up for themselves, locally)

Specifically, you will build a web site that
contains a slide show that describes your large
project proposal and your personnel (one slide per
person)

+ Do not put contact details onto the slides for each person (death to spammers);
+ The large project proposal will be described to you in lectures.

For an example of those slides:

+ See http://txts.github.io/slides/talk1.html.

## How to Start 

### Set up Github

+ Create a team of people (four people per team)
+ Create a public Github account (do not use the NcState one);
+ In that Github, create a new organization (called, e.g. XYZ).
+ Go to https://github.com/orgs/XYZ/teams and create a new team with _Admin Access_.
+ Add all your team members to that team.
+ In that organization, create repos called  `XYZ.github.io`,
  `fry` and `txts`.
  
### Set up a public static web site using Github

Note : do not use Github's ghpage tool. And do not use Jekyll. We are doing this
  old school.

+ In the XYZ organization, create a new repo called XYZ.github.io
+ In that repo, add a file `index.html` with some text in it like _hello_
+ In a few minutes, it your surf to http://XYZ.github.io, you should
	  see _hello_.

### Set up Tools

Set up pandoc, texlive, gnuplot, pandoc-citeproc, make, bash, awk, graphviz and
20 other little tools used for this work

+ Method1: the easy way. Log into the  `\_timmnix` image I made for you at
  http://http://vcl.drupal.ncsu.edu.  Then `cd /afs/unity.ncsu.edu/users/a-z/unityid/`
  Now you are using all the tools I installed for you, and you can write to
  your personnel file space.
+ Method2: another way. Get a c9.io account and  download and run https://github.com/timm/timmnix/blob/master/install.sh from the command line terminal.
+ Method3: a hard way. As per Method  but use
  your own hardware  (e.g. ubuntu on virtual box
  on whatever machine you like). 

Note I will support Method1 users. As to Method2 and Method3,
**you are on their own**. If you
have any problems with Method2,3 then my only help will be to say "try method1".

### Download the repos

```
cd /afs/unity.ncsu.edu/users/a-z/unityid # or wherever you work
mkdir gits
cd gits
git clone https://github.com/XYZ/fry.git
cd fry
wget https://github.com/txts/fry/archive/master.zip
unzip master.zip
mv fry-master/* .
rm -rf *.zip fry-master
git add --all
cd ..

git clone https://github.com/XYZ/txts
cd txts
wget https://github.com/txts/txts/archive/master.zip
unzip master.zip
mv txts-master/* .
rm -rf *.zip txts-master
git all --all
cd ..
```

Then do a _test install_, as shown below.

## How to test the site 

### Test Install

+ In a blank directory check out the two repos described below.
+ Edit the file txts/Makefile. Change `Out` to point to some output directory.
+ cd txts
+ make ready
+ Go to the _slides_ directory and look at `talk1.html`.
+ Check that it looks something like http://txts.github.io/slides/talk1.html.

### Test Configuration Tools

+ Delete any file in the `Out` directory
+ cd txts
+ make ready
+ Check that the deleted file has returned

### Test update

+ cd txts/slides
+ Make some change to the text in `talk1.html`
+ cd txts
+ make commit
+ Delete your `Out` directory and the the two repos (using `rm -rf`)
+ Repeat the test install. Check that you see your text change in the new `talk1.html`.

## What to hand in 

+ Fill out the [homework1 rubric](rubric1.html).
+ Print https://github.com/XYZ/txts/graphs/contributors.
+ Copy these two things three times.
+ Staple together each copy (table first, commit logs second). Unstabled
  material will not be accepted. No joke.
+ Hand in these three copies.

When you fill in the following table,
fill in the _self score_ column by ticking all the items
you think you have completed.

+ Do not write anything into the columns _peer score_`, _final score_


In the following:

+ Where it says _modified X_, this means at least one change (however slight)
  from the stuff already in http://txts.github.io/slides/talk1.html.
+ Where is says "all members have committed", we will check that using
  the github logs. Note that we do **not** expect to see _outliers_ in the commit
  pattern such as one person with 90% or 10% of the commits.
  
 

