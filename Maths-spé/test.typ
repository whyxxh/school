#import "conf.typ": *

#show: doc => conf(
  "something", "STEM subject", "Begue Ruben", "2025-07-28", doc
)

= test

#cbox(
  "définition", "definition 1.1."
)[
  A sequence $(x_n)_n : NN -> X$ is a Cauchy sequence if $forall epsilon > 0, exists N in NN$ such that $forall n, m
  >= N, d(x_n, x_m) < epsilon$.
]

For example we can see in the wild world that $forall x in NNp, exists y in ZZ$ such that $x + y = 0$
