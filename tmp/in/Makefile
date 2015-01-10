Lib=/home/ubuntu/workspace/tmp/in#
Out=$(Lib)/out#
In=$(Lib)/in#
Here=$(PWD)#
There=$(subst $(In),$(Out),$(Here))#

define files
	$(shell find . -maxdepth 1  -type f  \
	 | grep -v Makefile \
	 | grep -v _  | awk '{print "$(There)/" $$1}')
endef

define slide
	pandoc -s             \
	  --webtex -i -t slidy \
      -r markdown+simple_tables+table_captions \
      -o $(2) $(1)
endef

define page
	 pandoc -s \
       --toc    \
       -r markdown+simple_tables+table_captions+pipe_tables \
       -o $(2) $(1)
endef

define worker
     @cd $(realpath $(1));\
	 @$(MAKE -s -f $(Lib)/Makefile Here=$(realpath $(1)) sub;
endef

Goals=$(subst .md,.html,\
      $(subst .mkd,.html,\
        $(subst .dot,.png,\
          $(subst .plt,.png,\
              $(call files)))))

all:
	$(call worker,$(In))
	
sub : dirs $(Goals) 
	@(echo $(PWD))
	@$(foreach d,$(wildcard */.), $(call worker,$d))

dirs :
	$(shell mkdir -p $(There))

$(There)/%.html : %.mkd  ; $(call slide,$<,$@)
$(There)/%.html : %.md   ; $(call page,$<,$@)
$(There)/%.png  : %.dot  ; dot -Tpng -o $@ $<
$(There)/%.png  : %.plt  ; gnuplot $< >$@
$(There)/%      : %      ; cp $< $@
