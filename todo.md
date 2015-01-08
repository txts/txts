write a make file that is a recursive walker

```
.md ==> .html
.dot ==> png
.plt ==> png
.x   ==> x
```

if gets fired off on a Raw directory and is written to an Out directory

so the whole site is

```
_site
   lib # my code
   inc # a whole bunch of defaults used in compilation
         references.bib
         style.css
         before.html
         after.html
         template.html
inc
     optional stuff 
the rest of your stuff   
```
