# Mudela_rules.make

.SUFFIXES: .doc .dvi .mudtex .tely .texi


$(outdir)/%.latex: %.doc
	rm -f $@
#	LILYPONDPREFIX=$(LILYPONDPREFIX)/..  $(PYTHON) $(LILYPOND_BOOK) $(LILYPOND_BOOK_INCLUDES) --dependencies --outdir=$(outdir) $<
	$(PYTHON) $(LILYPOND_BOOK) $(LILYPOND_BOOK_INCLUDES) --dependencies --outdir=$(outdir) $<
	chmod -w $@

# don't do ``cd $(outdir)'', and assume that $(outdir)/.. is the src dir.
# it is not, for --srcdir builds
$(outdir)/%.texi: %.tely
	rm -f $@
#	LILYPONDPREFIX=$(LILYPONDPREFIX)/..  $(PYTHON) $(LILYPOND_BOOK) $(LILYPOND_BOOK_INCLUDES) --dependencies --outdir=$(outdir) --format=texi $<
	$(PYTHON) $(LILYPOND_BOOK) $(LILYPOND_BOOK_INCLUDES) --dependencies --outdir=$(outdir) --format=texi $<
	chmod -w $@

# nexi: no-lily texi
# for plain info doco: don't run lily
$(outdir)/%.nexi: %.tely
	rm -f $@
#	LILYPONDPREFIX=$(LILYPONDPREFIX)/..  $(PYTHON) $(LILYPOND_BOOK) $(LILYPOND_BOOK_INCLUDES) --dependencies --outdir=$(outdir) --format=texi --no-lily $<
	$(PYTHON) $(LILYPOND_BOOK) $(LILYPOND_BOOK_INCLUDES) --dependencies --outdir=$(outdir) --format=texi --no-lily $<
	mv $(@D)/$(*F).texi $@
	chmod -w $@

# nfo: info from non-lily texi
$(outdir)/%.info: $(outdir)/%.nexi
	-$(MAKEINFO) --force --output=$(outdir)/$(*F).info $<

# nfo: info from non-lily texi
#$(outdir)/%.nfo: $(outdir)/%.nexi
#	-$(MAKEINFO) --force --output=$(outdir)/$(*F).info $<
