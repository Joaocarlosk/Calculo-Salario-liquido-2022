algoritmo "Salário Líquido"
var
   Sal, Sal_parc, Sal_liq: real
   R: caractere

Procedimento Entrada()
Inicio
   EscrevaL ("CALCULADORA SALÁRIO LÍQUIDO")
   EscrevaL ()
   Escreva ("Qual o salário bruto do funcionário? ")
   Leia (Sal)
Fimprocedimento

Procedimento Saida()
Inicio
   Escreval()
   EscrevaL("O salário líquido do funcionário será de R$ ", Sal_liq:7:2)
   EscrevaL ()
   EscrevaL ("Você quer calcular um novo salário? [S/N]")
   Leia (R)
Fimprocedimento

Funcao Calc_1(Sal_parc: real): real
Var p, desc, s: real
Inicio
      Se (Sal <= 1212) entao
      p <- 0.075
      desc <- (Sal * p)
      s <- (Sal - desc)
      senao
         Se (Sal >1212) e (Sal <=2427.35) entao
         p <- 0.09
         desc <- (Sal * p)
         s <- (Sal - desc)
         senao
            Se (Sal >2427.35) e (Sal <=3641.03) entao
            p <- 0.12
           desc <- (Sal * p)
            s <- (Sal - desc)
            senao
               Se (Sal >3641.03) e (Sal <=7087.22) entao
               p <- 0.14
              desc <- (Sal * p)
              s <- (Sal - desc)
               Fimse
            Fimse
         Fimse
      Fimse
      Retorne S
Fimfuncao

Funcao Calc_2(Sal_liq: real): real
Var p, ir, d, dir, S: real
Inicio
      Se (Sal_parc <= 1903.98) entao
      p <- 0
      ir <- (p * Sal_parc)
      d <- 0
      dir <- ir - d
      S <- (Sal_parc - dir)
      senao
         Se (Sal_parc >1903.98) e (Sal_parc <=2826.65) entao
         p <- 0.075
         ir <- (p * Sal_parc)
         d <- 142.8
         dir <- ir - d
         S <- (Sal_parc - dir)
         senao
            Se (Sal_parc >2826.65) e (Sal_parc <=3751.05) entao
            p <- 0.15
            ir <- (p * Sal_parc)
            d <- 354.8
            dir <- ir - d
            S <- (Sal_parc - dir)
            senao
               Se (Sal_parc >3751.05) e (Sal_parc <=4664.68) entao
               p <- 0.225
               ir <- (p * Sal_parc)
               d <- 636.13
               dir <- ir - d
               S <- (Sal_parc - dir)
               senao
                  p <- 0.275
                  ir <- (p * Sal_parc)
                  d <- 869.36
                  dir <- ir - d
                  S <- (Sal_parc - dir)
               Fimse
            Fimse
         Fimse
      Fimse
      Retorne S
Fimfuncao

inicio
   Repita
      Entrada()
      Sal_parc <- Calc_1(Sal_parc)
      Sal_liq <- Calc_2(Sal_liq)
      Saida()
      Limpatela
   Ate (R="N") ou (R="n")
fimalgoritmo