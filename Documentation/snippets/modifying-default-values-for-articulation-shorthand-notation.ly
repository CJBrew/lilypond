%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.12.2"

\header {
  lsrtags = "expressive-marks"

%% Translation of GIT committish: fa19277d20f8ab0397c560eb0e7b814bd804ecec
  texidoces = "
Las abreviaturas se encuentran definidas dentro del archivo
@file{ly/script-init.ly}, donde las variables @code{dashHat},
@code{dashPlus}, @code{dashDash}, @code{dashBar},
@code{dashLarger}, @code{dashDot} y @code{dashUnderscore} reciben
valores predeterminados.  Se pueden modificar estos valores
predeterminados para las abreviaturas. Por ejemplo, para asociar
la abreviatura @code{-+} (@code{dashPlus}) con el símbolo del
semitrino en lugar del símbolo predeterminado +, asigne el valor
@code{trill} a la variable @code{dashPlus}:

"
  doctitlees = "Modificar los valores predeterminados para la notación abreviada de las articulaciones"


%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
 texidocde = "
Die Abkürzungen sind in der Datei @file{ly/script-init.ly} definiert, wo
den Variablen @code{dashHat}, @code{dashPlus}, @code{dashDash},
@code{dashBar}, @code{dashLarger}, @code{dashDot} und
@code{dashUnderscore} Standardwerte zugewiesen werden.  Diese Standardwerte
können verändert werden.  Um zum Beispiel die Abkürzung
@code{-+} (@code{dashPlus}) mit dem Triller anstatt mit dem +-Symbol zu
assoziieren, muss der Wert @code{trill} der Variable
@code{dashPlus} zugewiesen werden:

"
  doctitlede = "Die Standardwerte der Abkürzungen von Artikulationen verändern"

%% Translation of GIT committish: 217cd2b9de6e783f2a5c8a42be9c70a82195ad20
  texidocfr = "
Les raccourcis sont répertoriés dans le fichier
@file{ly/script-init.ly}, dans lequel on retrouve les variables
@code{dashHat}, @code{dashPlus}, @code{dashDash}, @code{dashBar},
@code{dashLarger}, @code{dashDot}, et @code{dashUnderscore} ainsi que
leur valeur par défaut.  Ces valeurs peuvent être modifiées selon vos
besoins.  Il suffit par exemple, pour affecter au raccourci @code{-+}
(@code{dashPlus}) le symbole du trille en lieu et place du @code{+}
(caractère plus), d'assigner la valeur @code{trill} à la variable
@code{dashPlus} :

"
  doctitlefr = "Modification de la signification des raccourcis pour les signes d'articulation"


  texidoc = "
The shorthands are defined in @samp{ly/script-init.ly}, where the
variables @code{dashHat}, @code{dashPlus}, @code{dashDash},
@code{dashBar}, @code{dashLarger}, @code{dashDot}, and
@code{dashUnderscore} are assigned default values.  The default values
for the shorthands can be modified. For example, to associate the
@code{-+} (@code{dashPlus}) shorthand with the trill symbol instead of
the default + symbol, assign the value @code{trill} to the variable
@code{dashPlus}:

"
  doctitle = "Modifying default values for articulation shorthand notation"
} % begin verbatim

\relative c'' { c1-+ }

dashPlus = "trill"

\relative c'' { c1-+ }

