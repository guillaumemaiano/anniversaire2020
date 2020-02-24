FILES = $(shell find . -name *.html)
SCP = scp $(WEBUSER)@maiano.fr:$(WEBFOLDER)/anniversaire/
LAST_PUSH = .last_push

.PHONY : push
push : $(LAST_PUSH)

$(LAST_PUSH) : $(FILES)
	$(SCP) $?
	touch $(LAST_PUSH)
