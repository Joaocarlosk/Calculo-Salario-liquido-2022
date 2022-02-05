algoritmo "Desafio PHP Beto"
var
   cont, par, impar: inteiro

inicio
   cont <- 1
   Escreval ("PARES")
   Enquanto (cont <= 200) faca
      Se (cont % 2 = 0) entao
         par <- cont
         Escreval (par)
      Fimse
      cont <- cont + 1
   Fimenquanto
   
   cont <- 1
   Escreval ("IMPARES")
   Enquanto (cont <= 200) faca
      Se (cont % 2 = 1) entao
         impar <- cont
         Escreval (impar)
      Fimse
      cont <- cont + 1
   Fimenquanto

fimalgoritmo