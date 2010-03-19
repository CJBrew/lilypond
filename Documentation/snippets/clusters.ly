%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.13.16"

\header {
  lsrtags = "simultaneous-notes, chords, keyboards"

%% Translation of GIT committish: 00ef2ac3dd16e21c9ffdffaa4d6d043a3f1a76e6
  texidoces = "
Los «clusters» o racimos son un mecanismo para indicar la
interpretación de un ámbito de notas al mismo tiempo.

"
  doctitlees = "Clusters («racimos»)"

  texidoc = "
Clusters are a device to denote that a complete range of notes is to be
played.

"
  doctitle = "Clusters"
} % begin verbatim

fragment = \relative c' {
  c4 f <e d'>4
  <g a>8 <e a> a4 c2 <d b>4
  e2 c
}

<<
  \new Staff \fragment
  \new Staff \makeClusters \fragment
>>

