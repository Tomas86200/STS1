Algorithme suite_de_collatz
Variable U , i : Entier
D�but
  |  Pour i <- 0 � 9 Faire
  |    |  Si Modulo ( U , 2 ) = 0 Alors
  |    |    |  U <- U / 2
  |    |  Sinon
  |    |    |  U <- 3 * U + 1
  |    |  FinSi
  |    |  Afficher ( "terme" , i )
  |    |  Afficher ( U )
  |  Fin Pour
Fin
