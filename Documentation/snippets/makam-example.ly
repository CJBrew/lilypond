% Do not edit this file; it is automatically
% generated from Documentation/snippets/new
% This file is in the public domain.
%% Note: this file works from version 2.13.0
\version "2.13.16"

\header {
%% Translation of GIT committish: 00ef2ac3dd16e21c9ffdffaa4d6d043a3f1a76e6
  texidoces = "
El «Makam» es un tipo de melodía de Turquía que
utiliza alteraciones microtonales de 1/9 de tono.  Consulte el
archivo de inicio @code{makam.ly} (véase el 'Manual de
aprendizaje @version{}, 4.6.3 Otras fuentes de información' para
averiguar la situación de este archivo) para ver detalles de los
nombres de las notas y las alteraciones.

"
  doctitlees = "Ejemplo de «Makam»"



%% Translation of GIT committish: d96023d8792c8af202c7cb8508010c0d3648899d
  texidocde = "
Makam ist eine türkische Melodie, in der 1/9-Tonabstände
eingesetzt werden.  Sehen Sie sich die Initialisierungsdatei
@code{makam.ly} für weiter Information zu Tonhöhenbezeichnungen
und Alterationen an (siehe
Handbuch zum Lernen @version{}, 4.6.3 Weitere Information zu
Hinweisen, wo diese Datei gespeichert ist)."

  doctitlede = "Makam-Beispiel"

%% Translation of GIT committish: 59968a089729d7400f8ece38d5bc98dbb3656a2b
  texidocfr = "
Le «makam» est une forme de mélodie turque qui utilise des altérations
d'un neuvième de ton.  Consultez le fichier d'initialisation
@code{makam.ly} pour plus de détails sur les hauteurs et altérations
utilisées (voir le chapitre 4.6.3 - Autres sources d'information du
manuel d'initiation pour le localiser).

"
  doctitlefr = "Exemple de musique « Makam »"

  lsrtags = "pitches, world-music"
  texidoc = "
Makam is a type of melody from Turkey using 1/9th-tone microtonal
alterations.  Consult the initialization file @samp{ly/makam.ly} for
details of pitch names and alterations.

"
  doctitle = "Makam example"
} % begin verbatim


% Initialize makam settings
\include "makam.ly"

\relative c' {
  \set Staff.keySignature = #`((6 . ,(- KOMA)) (3 . ,BAKIYE))
  c4 cc db fk
  gbm4 gfc gfb efk
  fk4 db cc c
}
