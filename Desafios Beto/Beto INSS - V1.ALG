//Dado o salário bruto de um funcionário, crie um algoritmo que fará o
//cálculo do salário líquido tendo como base a tabela do IRPF e INSS.

algoritmo "Salário Líquido"
var
   Sal, INSS, IRPF, Sal_parc, Sal_liq: real

Procedimento Entrada()
Inicio
   Escreva ("Qual o salário bruto do funcionário? ")
   Leia (Sal)
Fimprocedimento

Funcao Calculo(Sal_parc     : real): real
Var p, pp, s: real
Inicio
      Se (Sal <= 1212) entao
      p <- 0.075
      pp <- (Sal * p)
      S <- (Sal - pp)
      senao
         Se (Sal >1212) e (Sal <=2427.35) entao
         p <- 0.09
         pp <- (Sal * p)
         S <- (Sal - pp)
         senao
            Se (Sal >2427.35) e (Sal <=3641.03) entao
            p <- 0.12
            pp <- (Sal * p)
            S <- (Sal - pp)
            senao
               Se (Sal >3641.03) e (Sal <=7087.22) entao
               p <- 0.14
               pp <- (Sal * p)
               S <- (Sal - pp)
               Fimse
            Fimse
         Fimse
      Fimse
      Retorne S
Fimfuncao

Funcao Calc_1(SALLIQ: real): real
Var I, II, S: real
Inicio
      Se (Sal_parc <= 1903.98) entao
      I <- 0
      II <- (I * Sal_parc)
      S <- (Sal_parc - II)
      senao
         Se (Sal_parc >1903.98) e (Sal_parc <=2826.65) entao
           I <- 0.075
           II <- (Sal_parc * I)
           S <- (Sal_parc - II)
         senao
            Se (Sal_parc >2826.65) e (Sal_parc <=3751.05) entao
            I <- 0.15
            II <- (I * Sal_parc)
            S <- (Sal_parc - II)
            senao
               Se (Sal_parc >3751.05) e (Sal_parc <=4664.68) entao
               I <- 0.225
               II <- (I * Sal_parc)
               S <- (Sal_parc - II)
                  senao
                  I <- 0.27
                  II <- (I * Sal_parc)
                  S <- (Sal_parc - II)
               Fimse
            Fimse
         Fimse
      Fimse
      Retorne S
Fimfuncao

inicio
   Entrada()
   Sal_parc <- Calculo(Sal_parc)
   Sal_liq <- Calc_1(Sal_liq)
fimalgoritmo