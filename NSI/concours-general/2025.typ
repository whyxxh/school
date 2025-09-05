#import "conf.typ": *

#show: conf.with(
  title: [Concours Général 2025],
  class: [Numérique et Science Informatique],
  date: [2025-09-04]
)

= Problème 1: Solveur SAT

== Introduction

#exo("")[
  Pour chaque formule de l’exemple 1.1, indiquer si on peut satisfaire la formule en choisissant bien les valeurs des
  variables. Lorsque la formule peut-être satisfaite, donner une des manières de la satisfaire, en précisant la valeur
  donnée à chaque variable.
]
#ans[
  $A = not x_1 or (x_1 and x_2) = 1$, si $x_(1) = 1$ et $x_(2) = 1$ ou $0$ \
  $B = x_1 and x_2 and (x_1 or x_2) = 1$, si $x_(1) = 1$ et $x_(2) = 1$   \
]

#exo("")[ 
  Donner un exemple de formule, qui n’utilise pas les constantes 0 et 1, et qui ne peut pas être satisfaite,
  quelles que soient les valeurs données à ses variables 
] 
#ans[
  $not x and x$
]

#exo("")[
  Écrire la fonction `simplifie(F, lit)` qui prend en argument une liste de listes d’entiers non nuls (`F`) et un entier
  non nul (`lit`) et qui applique la simplification décrite plus haut. Elle ne doit pas modifier `F` mais recréer une
  nouvelle formule. On aura par exemple :
  ```py
  >>> simplifie([[1, 2, 3], [-1, 3], [-4]], -1)
  [[2, 3], [-4]]
  >>> simplifie([[1, 2, 3], [-1, 3], [-4]], 4)
  [[1, 2, 3], [-1, 3], []]
  >>> simplifie([[1, 2, 3], [-1, 3], [-4]], -4)
  [[1, 2, 3], [-1, 3]]
  ```
  Attention, il est important de ne pas modifier la formule F. N’utilisez notamment ni les méthodes « `.remove` »
  et « `.pop` », ni le mot-clé « `del` ». Votre code ressemblera vraisemblablement à :
  ```py
  def simplifie(f, l):
    g = [] # formule simplifiée que l'on reconstruit
    ... # boucle etc.
      g.append(cl) # ajout de la nouvelle clause
    ...
    return 
  ```
]
#ans[
  ```py
  def simplifie(F, l):
    G = []
      G.append(cl) # ajout de la nouvelle clause
    return 
  ```
]
