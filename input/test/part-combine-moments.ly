\version "1.7.19"

\score{
	\context PianoStaff <
		\context StaffCombineStaff=one \skip 1*2
		\context StaffCombineStaff=two \skip 1*2
		\context StaffCombineStaff=one \partcombine StaffCombineStaff
			\context StaffCombineVoice=one \notes\relative c''
				{
					c4 d e f\break
					c2 e4 f\break
				}
			\context StaffCombineVoice=two \notes\relative c''
				{
					c4 d e f
					c2 e2
				}
		>
	\paper {

		textheight = 295.0\mm
		linewidth = 180.0\mm

		\translator{ \RemoveEmptyStaffContext }
		%
		% The Voice combine hierarchy
		%
		\translator{
			\ThreadContext
			\name "VoiceCombineThread"
			\consists "Rest_engraver"
		}
		\translator{
			\VoiceContext
			\name "VoiceCombineVoice"
			soloText = #"I."
			soloIIText = #"II."
			\remove "Rest_engraver"
			\accepts "VoiceCombineThread"
		}
		\translator{
			\RemoveEmptyStaffContext
			\consists "Mark_engraver"
			\name "VoiceCombineStaff"
			\accepts "VoiceCombineVoice"
		}

		%
		% The Staff combine hierarchy
		%
		\translator{
			\ThreadContext
			\name "StaffCombineThread"
		}
		\translator{
			\VoiceContext
			\name "StaffCombineVoice"
			\accepts "StaffCombineThread"
			\consists "Thread_devnull_engraver"
		}
		\translator {
			\RemoveEmptyStaffContext
			\name "StaffCombineStaff"
			\accepts "StaffCombineVoice"

			soloADue = ##t
			soloText = #""
			soloIIText = #""
			aDueText = #""
			splitInterval = #'(1 . 0)
			changeMoment = #`(,(ly:make-moment 1 1) . ,(ly:make-moment 1 1))

		}
		\translator {
			\StaffGroupContext
			\accepts "VoiceCombineStaff"
			\accepts "StaffCombineStaff"
		}
		\translator{ \RemoveEmptyStaffContext }

		\translator {
			\ScoreContext
			\accepts "VoiceCombineStaff"
			\accepts "StaffCombineStaff"
			skipBars = ##t 

			%%FIXME barScriptPadding = #2.0 % dimension \pt
			RehearsalMark \override #'padding = #4
			BarNumber \override #'padding = #3
			%% URG: this changes dynamics too
			%%textStyle = #"italic"
			TimeSignature \override #'style = #'C
			RestCollision \set #'maximum-rest-count = #1
		}
	}
}
%% new-chords-done %%
