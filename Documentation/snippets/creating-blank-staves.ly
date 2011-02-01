%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.2"

\header {
  lsrtags = "staff-notation, editorial-annotations, contexts-and-engravers, paper-and-layout"

%% Translation of GIT committish: fa19277d20f8ab0397c560eb0e7b814bd804ecec
  texidoces = "
Para crear pentagramas en blanco, genere compases vacíos y después
elimine el grabador de números de compás @code{Bar_number_engraver}
del contexto @code{Score}, y los grabadores de la indicación de compás
@code{Time_signature_engraver}, de la clave @code{Clef_engraver} y de
los compases @code{Bar_engraver} del contexto de @code{Staff}.

"
  doctitlees = "Crear pentagramas en blanco"

  texidoc = "
To create blank staves, generate empty measures then remove the
@code{Bar_number_engraver} from the @code{Score} context, and the
@code{Time_signature_engraver}, @code{Clef_engraver} and
@code{Bar_engraver} from the @code{Staff} context.

"
  doctitle = "Creating blank staves"
} % begin verbatim

#(set-global-staff-size 20)

\score {
  {
    \repeat unfold 12 { s1 \break }
  }
  \layout {
    indent = 0\in
    \context {
      \Staff
      \remove "Time_signature_engraver"
      \remove "Clef_engraver"
      \remove "Bar_engraver"
    }
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  line-width = 7.5\in
  left-margin = 0.5\in
  bottom-margin = 0.25\in
  top-margin = 0.25\in
}

