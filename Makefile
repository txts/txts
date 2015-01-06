Parent=./..

Fry=./../fry
Out=./../txts.github.io
Raw=$(PWD)

include $(Fry)/fry.mk

overRideSomething:
	@echo do nothing
