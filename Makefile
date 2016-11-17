# early_HIV_treatment_model
### Hooks for the editor to set the default target
current: target

target pngtarget pdftarget vtarget acrtarget: ode.out 

##################################################################

# make files

Sources = Makefile .gitignore README.md stuff.mk LICENSE.md
include stuff.mk
# include $(ms)/perl.def
include $(ms)/python.def

##################################################################

overleaf:
	git clone https://git.overleaf.com/6955852wpgdcrcbnxxc $@

Sources += Assumption_for_dropout_model.tex
Assumption_for_dropout_model.pdf: Assumption_for_dropout_model.tex

##################################################################

Sources += $(wildcard *.mkd)
Notes = lifeYears.mkd notes.mkd

######################################################################

## ODEs in python?
## Not doing this for now, because we only like the flow approximation for PDE boxes

ode.out: ode.py
	$(PITH)

######################################################################

### Makestuff

## Change this name to download a new version of the makestuff directory
# Makefile: start.makestuff

-include $(ms)/git.mk
-include $(ms)/visual.mk

# -include $(ms)/wrapR.mk
-include $(ms)/flextex.mk
