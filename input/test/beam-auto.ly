\version "1.7.18"
\header{
	texidoc = "@cindex Beaming Presets
The auto-beam engraver has presets for common time signatures.
"
}
\score{
    \notes \relative c''{

	% urg: something breaks in grouping  see input/bugs/time-grouping.ly
	%
	% really? it looks fine to me.  I think the above note is old; remove
	% these lines in the next revision.
    	\time 1/2
    	c8 c c c
	c16 c c c c c c c
	c32 c c c c c c c c c c c c c c c
    	\time 1/4
    	c8 c 
	c16 c c c
	c32 c c c c c c c
    	\time 1/8
    	c8
	c16 c
	c32 c c c

	\time 2/2
    	c8 c c c c c c c
	c16 c c c c c c c c c c c c c c c
	c32 c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c
	\time 2/4
	c8 c c c
	c16 c c c c c c c
	c32 c c c c c c c c c c c c c c c
	\time 2/8
	c8 c
	c16 c c c
	c32 c c c c c c c
	\time 3/2
	c8 c c c c c c c c c c c
	c16 c c c c c c c c c c c c c c c c c c c c c c c
	\time 3/4
	c8 c c c c c
	c16 c c c c c c c c c c c
	c32 c c c c c c c c c c c c c c c c c c c c c c c
	\time 3/8
	c8 c c
	c16 c c c c c
	c32 c c c c c c c c c c c
	\time 4/4
	c8 c c c c c c c
	c16 c c c c c c c c c c c c c c c
	c32 c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c
	\time 4/8
	c8 c c c
	c16 c c c c c c c
	c32 c c c c c c c c c c c c c c c
	\time 6/8
	c8 c c c c c
	c16 c c c c c c c c c c c
	\time 9/8
	c8 c c c c c c c c
	c16 c c c c c c c c c c c c c c c c c
    }
    \paper{
    }
}
%% new-chords-done %%
