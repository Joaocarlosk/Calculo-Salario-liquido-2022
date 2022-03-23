algoritmo "Salário Líquido"
var
   Sal, INSS, IR, Sal_liq: real
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
   Sal_liq <- Sal - INSS - IR
   Escreval ("Desconto de INSS = ", INSS:5:2)
   Escreval ("Desconto de IR = ", IR:5:2)
   Escreval()
   EscrevaL("O salário líquido do funcionário será de R$ ", Sal_liq:7:2)
   EscrevaL ()
   EscrevaL ("Você quer calcular um novo salário? [S/N]")
   Leia (R)
Fimprocedimento

Funcao Calc_1(INSS: real): real
Var p, desc, s: real
Inicio
      Se (Sal <= 1212) entao
      p <- 0.075
      desc <- (Sal * p)
      senao
         Se (Sal >1212) e (Sal <=2427.35) entao
         p <- 0.09
         desc <- (Sal * p)
         senao
            Se (Sal >2427.35) e (Sal <=3641.03) entao
            p <- 0.12
            desc <- (Sal * p)
            senao
               Se (Sal >3641.03) e (Sal <=7087.22) entao
               p <- 0.14
              desc <- (Sal * p)
              Fimse
            Fimse
         Fimse
      Fimse
      Retorne desc
Fimfuncao

Funcao Calc_2(IR: real): real
Var p, ir_parc, d, dir, Sal_parc: real
Inicio
   Sal_parc <- Sal - INSS
      Se (Sal_parc <= 1903.98) entao
      p <- 0
      ir_parc <- (p * Sal_parc)
      d <- 0
      dir <- ir_parc d
         senao
         Se (Sal_parc >1903.98) e (Sal_parc <=2826.65) entao
         p <- 0.075
         ir_parc <- (p * Sal_parc)
         d <- 142.8
         dir <- ir_parc - d
         senao
            Se (Sal_parc >2826.65) e (Sal_parc <=3751.05) entao
            p <- 0.15
            ir_parc <- (p * Sal_parc)
            d <- 354.8
            dir <- ir_parc - d
            senao
               Se (Sal_parc >3751.05) e (Sal_parc <=4664.68) entao
               p <- 0.225
               ir_parc <- (p * Sal_parc)
               d <- 636.13
               dir <- ir_parc - d
               senao
                  p <- 0.275
                  ir_parc <- (p * Sal_parc)
                  d <- 869.36
                  dir <- ir_parc - d
               Fimse
            Fimse
         Fimse
      Fimse
      Retorne dir
Fimfuncao

inicio
   Repita
      Entrada()
      INSS <- Calc_1(INSS)
      IR <- Calc_2(IR)
      Saida()
      Limpatela
   Ate (R="N") ou (R="n")
fimalgoritmo