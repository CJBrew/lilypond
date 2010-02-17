%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.13.10"

\header {
  lsrtags = "fretted-strings"

%% Translation of GIT committish: 5cab62e8738ff02eead438042743116391f306f5
  texidoces = "
En este ejemplo se combinan las digitaciones de la mano izquierda,
indicaciones del número de cuerda y digitaciones de la mano
derecha.

"
  doctitlees = "Digitaciones - indicación del número de cuerda y digitaciones de mano derecha"

%% Translation of GIT committish: d96023d8792c8af202c7cb8508010c0d3648899d
  texidocde = "
Dieses Beispiel kombiniert Fingersatz für die linke Hand, Saitennummern
und Fingersatz für die rechte Hand.

"
  doctitlede = "Fingersatz Saitennummern und Fingersatz für die rechte Hand"
%% Translation of GIT committish: 3f880f886831b8c72c9e944b3872458c30c6c839

  texidocfr = "
L'exemple suivant illustre comment combiner des doigtés pour la main
gauche, des indications de corrde et des doigtés pour la main droite.

"
  doctitlefr = "Doigtés indications de cordeet doigtés main droite"


  texidoc = "
This example combines left-hand fingering, string indications, and
right-hand fingering.

"
  doctitle = "Fingerings string indications and right-hand fingerings"
} % begin verbatim

#(define RH rightHandFinger)

\relative c {
  \clef "treble_8"
  <c-3\5-\RH #1 >4
  <e-2\4-\RH #2 >4
  <g-0\3-\RH #3 >4
  <c-1\2-\RH #4 >4
}

