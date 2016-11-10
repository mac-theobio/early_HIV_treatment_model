# early_HIV_treatment_model
### Hooks for the editor to set the default target
current: target

target pngtarget pdftarget vtarget acrtarget: Assumption_for_dropout_model.pdf 

##################################################################

# make files

Sources = Makefile .gitignore README.md stuff.mk LICENSE.md
include stuff.mk
# include $(ms)/perl.def

##################################################################

overleaf:
	git clone https://git.overleaf.com/6955852wpgdcrcbnxxc $@

Assumption_for_dropout_model.pdf: Assumption_for_dropout_model.tex

##################################################################

## Content

Sources += $(wildcard *.mkd)
Notes = lifeYears.mkd notes.mkd

######################################################################

### Makestuff

## Change this name to download a new version of the makestuff directory
# Makefile: start.makestuff

-include $(ms)/git.mk
-include $(ms)/visual.mk

# -include $(ms)/wrapR.mk
-include $(ms)/flextex.mk
