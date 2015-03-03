---
title: Homework3: Risk Managment
---

Due March 31

## Hand in

One page with with [the rubric](rubric4.html) filled in.

## Setup

+ Create a new directory, into which download and unzip [the source code](https://github.com/ai-se/cocomo/archive/master.zip).
    + For the following projects, 
+ Run this command to study the effects of the various treatments on _effort_

```
python cocomoeg.py
```

+ Run this command to study the effects of various treatments on _badSmells_
  (look for output of the _\_badSmells_ function).

```
python badSmellseg.py
```

## Theory1: COCOMO

Write the following 3 lists. 

In each list, for each item, write a one line description and a two line "story" showing how some management
action changed that item for the worse or for the better: 
    
+ List1: COCOMO Scale factors (the things that change effort exponentially)
+ COCOMO Effort multipliers (the things that change effor linearly)
    + List2: The _uppsies_: the things that, if increased, add to the development effort;
    + List3: The _downsies_: the things that, if increased, reduce the development effort.

## Theory2: Treatments (management actions)

Look up all the functions in _cocomo-master/src/cocomo.py_ that are
decorated with _rx_. For three of these functions, write a two line
"story" describing this management action.

## Theory3: Projects

Look up the functions in _cocomo-master/src/cocomo.py_ that are decorated with _ok_. Describe:

+ Three key differences between `flight` and `ground`
+ Three key differences between `osp` and `osp2`.

## Theory4: Bad Smells

Look up the bad smell tables in _cocomo-master/src/badSmells.py_. For three of those tables,
write a two line "story" telling the tle of how management made decisions that lead to the bad smell.

## Practice:

+ Work out how to run just some treatments on one project (_osp_) by reading the demo codes
in _cocomoeg.py_ and _badSmellseg.py (hint: in each og the _*eg.py_ files, change the values of
_PRODUCTS_ and _TREATMENTS_ variables).
+ Task1: try to find some change that makes badSmells worse and effort better.
+ Task2: try to find some change that makes badSmells better and effort worse.
+ Task3: (very hard) try to find some change that makes both badSmells and effort better.
+ Hint:
    + To define a project change, copy ome of the _rx_ functions
    + To see the effect of your change, add your new change to the _TREATMENTS_ variable.
    + To judge the comparative effect of your change, compare your results to the baselines generated in setup.
  

