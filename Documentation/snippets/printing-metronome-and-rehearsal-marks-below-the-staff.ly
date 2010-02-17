%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.13.10"

\header {
  lsrtags = "rhythms, expressive-marks, staff-notation, tweaks-and-overrides"

%% Translation of GIT committish: 5cab62e8738ff02eead438042743116391f306f5
  texidoces = "
De forma predeterminada, las indicaciones metronómicas y las
letras de ensayo se imprimen encima del pentagrama.  Para
colocarlas debajo del pentagrama, simplemente ajustamos
adecuadamente la propiedad @code{direction} de
@code{MetronomeMark} o de @code{RehearsalMark}.

"

  doctitlees = "Impresión de indicaciones metronómicas y letras de ensayo debajo del pentagrama"


%% Translation of GIT committish: d96023d8792c8af202c7cb8508010c0d3648899d
  texidocde = "
Normalerweise werden Metronom- und Übungszeichen über dem Notensystem ausgegeben.
Um sie unter das System zu setzen, muss die @code{direction}-Eigenschaft
von @code{MetronomeMark} oder @code{RehearsalMark} entsprechend verändert werden.

"
  doctitlede = "Metronom- und Übungszeichen unter das System setzen"
%% Translation of GIT committish: d78027a94928ddcdd18fd6534cbe6d719f80b6e6
  texidocfr = "
Les indications de tempo et les marques de repère s'impriment par défaut
au-dessus de la portée.  Le fait de régler en conséquence la propriété
@code{direction} des objets @code{MetronomeMark} ou @code{RehearsalMark}
les placera au-dessous de la portée.

"
  doctitlefr = "Impression du métronome et des repères sous la portée"


  texidoc = "
By default, metronome and rehearsal marks are printed above the staff.
To place them below the staff simply set the @code{direction} property
of @code{MetronomeMark} or @code{RehearsalMark} appropriately.

"
  doctitle = "Printing metronome and rehearsal marks below the staff"
} % begin verbatim

\layout { ragged-right = ##f }

{
  % Metronome marks below the staff
  \override Score.MetronomeMark #'direction = #DOWN
  \tempo 8. = 120
  c''1

  % Rehearsal marks below the staff
  \override Score.RehearsalMark #'direction = #DOWN
  \mark \default
  c''1
}

