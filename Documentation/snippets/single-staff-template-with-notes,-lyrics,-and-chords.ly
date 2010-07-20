%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.13.20"

\header {
  lsrtags = "vocal-music, chords, template"

%% Translation of GIT committish: 0b55335aeca1de539bf1125b717e0c21bb6fa31b
  texidoces = "
Esta plantilla facilita la preparación de una canción con melodía,
letra y acordes.

"
  doctitlees = "Plantilla de pentagrama único con música letra y acordes"

%% Translation of GIT committish: fa1aa6efe68346f465cfdb9565ffe35083797b86
  texidocja = "
これは旋律、単語、コードを持つ歌曲の楽譜のためのテンプレートです。
"
%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Mit diesem Beispiel können Sie einen Song mit Melodie,
Text und Akkorden schreiben.
"

  doctitlede = "Vorlage für eine Notenzeile mit Noten Text und Akkorden"

%% Translation of GIT committish: ceb0afe7d4d0bdb3d17b9d0bff7936bb2a424d16
  texidocfr = "
Ce cannevas comporte tous les éléments d'une chanson : la mélodie,
les paroles, les accords.

"
  doctitlefr = "Paroles musique et accords"

  texidoc = "
This template allows the preparation of a song with melody, words, and
chords.

"
  doctitle = "Single staff template with notes lyrics and chords"
} % begin verbatim

melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  a4 b c d
}

text = \lyricmode {
  Aaa Bee Cee Dee
}

harmonies = \chordmode {
  a2 c
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Voice = "one" { \autoBeamOff \melody }
    \new Lyrics \lyricsto "one" \text
  >>
  \layout { }
  \midi { }
}

