%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.2"

\header {
  lsrtags = "text, paper-and-layout, titles"

%% Translation of GIT committish: fa19277d20f8ab0397c560eb0e7b814bd804ecec
  texidoces = "
La alineación horizontal de los nombres de instrumento se puede
trucar modificando la propiedad @code{Staff.InstrumentName
#'self-alignment-X}.  Las variables de @code{\\layout}
@code{indent} y @code{short-indent} definen el espacio en que se
alinean los nombres de instrumento antes del primer sistema y de
los siguientes, respectivamente.

"
  doctitlees = "Alinear y centrar los nombres de instrumento"

  texidoc = "
The horizontal alignment of instrument names is tweaked by changing the
@code{Staff.InstrumentName #'self-alignment-X} property. The
@code{\\layout} variables @code{indent} and @code{short-indent} define
the space in which the instrument names are aligned before the first
and the following systems, respectively.

"
  doctitle = "Aligning and centering instrument names"
} % begin verbatim

\paper {
  left-margin = 3\cm
}

\score {
  \new StaffGroup <<
    \new Staff {
      \override Staff.InstrumentName #'self-alignment-X = #LEFT
      \set Staff.instrumentName = \markup \left-column {
        "Left aligned"
        "instrument name"
      }
      \set Staff.shortInstrumentName = #"Left"
      c''1
      \break
      c''1
    }
    \new Staff {
      \override Staff.InstrumentName #'self-alignment-X = #CENTER
      \set Staff.instrumentName = \markup \center-column {
        Centered
        "instrument name"
      }
      \set Staff.shortInstrumentName = #"Centered"
      g'1
      g'1
    }
    \new Staff {
      \override Staff.InstrumentName #'self-alignment-X = #RIGHT
      \set Staff.instrumentName = \markup \right-column {
        "Right aligned"
        "instrument name"
      }
      \set Staff.shortInstrumentName = #"Right"
      e'1
      e'1
    }
  >>
  \layout {
    ragged-right = ##t
    indent = 4\cm
    short-indent = 2\cm
  }
}
