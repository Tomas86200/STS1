Algorithme Fibonacci

Variable a , b , c , i : Entier
Variable resutat : Entier [ 10 ]

Début
  |  a <- 1
  |  b <- 1
  |  Afficher ( b )
  |  Pour i <- 1 à 10 Faire
  |    |  c <- b
  |    |  b <- b + a
  |    |  a <- c
  |    |  resutat [ i ] <- c
  |    |  Afficher ( resutat [ i ] )
  |  FinPour
Fin
