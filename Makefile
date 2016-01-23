
allfiles = $(wildcard */*-credit.tex)
allpath = $(subst -credit.tex,,$(allfiles))
alldirs = $(notdir $(allpath))

allcredits: $(wildcard */*-credit.tex)

all: $(alldirs)/README.md

*/README.md: $(dir $@)/$(@D)-credit.tex
	echo $(@D)

