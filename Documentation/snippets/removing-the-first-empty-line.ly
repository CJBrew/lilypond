%% Do not edit this file; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% This file is in the public domain.
\version "2.13.16"

\header {
  lsrtags = "staff-notation, tweaks-and-overrides, breaks"

%% Translation of GIT committish: 00ef2ac3dd16e21c9ffdffaa4d6d043a3f1a76e6
  texidoces = "
El primer pentagrama vacío también se puede suprimir de la
partitura estableciendo la propiedad @code{remove-first} de
@code{VerticalAxisGroup}.  Esto se puede hacer globalmente dentro
del bloque @code{\\layout}, o localmente dentro del pentagrama
concreto que se quiere suprimir.  En este último caso, tenemos que
especificar el contexto (@code{Staff} se aplica sólo al pentagrama
actual) delante de la propiedad.

El pentagrama inferior del segundo grupo no se elimina, porque el
ajuste sólo se aplica al pentagrama concreto dentro del que se
escribe.

"
  doctitlees = "Quitar la primera línea vacía"


%% Translation of GIT committish: d96023d8792c8af202c7cb8508010c0d3648899d
  texidocde = "
Ein leeres Notensystem kann auch aus der ersten Zeile einer Partitur
entfernt werden, indem die Eigenschaft @code{remove-first} der
@code{VerticalAxisGroup}-Eigenschaft eingesetzt wird.  Das kann
man global in einer @code{\\layout}-Umgebung oder lokal in dem
bestimmten Notensystem machen, das entfernt werden soll.  In letzterem
Fall muss man den Kontext angeben.

Das untere Notensystem der zweiten Systemgruppe wird nicht entfernt,
weil in die Einstellungen in dem Schnipsel nur für das eine Notensystem
gültig sind.

"
  doctitlede = "Die erste leere Notenzeile auch entfernen"

%% Translation of GIT committish: d78027a94928ddcdd18fd6534cbe6d719f80b6e6
  texidocfr = "
Par défaut, le premier système comportera absolument toutes les portées.
Si vous voulez masquer les portées vides y compris pour le premier
système, vous devrez activer la propriété @code{remove-first} du
@code{VerticalAxisGroup}.  Mentionnée dans un bloc @code{\\layout},
cette commande agira de manière globale.  Pour qu'elle ne soit effective
que pour une portée individuelle, vous devrez également spécifier le
contexte (@code{Staff} pour qu'il ne concerne que la portée en cours) en
préfixe de la propriété. 

La première ligne inférieure du deuxième @code{StaffGroup} est bien
présente, pour la simple raison que le réglage en question ne s'applique
qu'à la portée dans laquelle il a été inscrit.

"
  doctitlefr = "Masquage de la première ligne si elle est vide"


  texidoc = "
The first empty staff can also be removed from the score by setting the
@code{VerticalAxisGroup} property @code{remove-first}. This can be done
globally inside the @code{\\layout} block, or locally inside the
specific staff that should be removed.  In the latter case, you have to
specify the context (@code{Staff} applies only to the current staff) in
front of the property.

The lower staff of the second staff group is not removed, because the
setting applies only to the specific staff inside of which it is
written.

"
  doctitle = "Removing the first empty line"
} % begin verbatim

\layout {
  \context {
    \RemoveEmptyStaffContext
    % To use the setting globally, uncomment the following line:
    % \override VerticalAxisGroup #'remove-first = ##t
  }
}
\new StaffGroup <<
  \new Staff \relative c' {
    e4 f g a \break
    c1
  }
  \new Staff {
    % To use the setting globally, comment this line,
    % uncomment the line in the \layout block above
    \override Staff.VerticalAxisGroup #'remove-first = ##t
    R1 \break
    R
  }
>>
\new StaffGroup <<
  \new Staff \relative c' {
    e4 f g a \break
    c1
  }
  \new Staff {
    R1 \break
    R
  }
>>

