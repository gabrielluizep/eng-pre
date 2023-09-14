#import "../typst/template.typ": conf

#show: doc => conf(
  title: [
    Prova 1
  ],
  subtitle: [
    Processos Estocásticos
  ],
  authors: (
    (
      name: "Gabriel Luiz Espindola Pedro",
    ),
  ),
  date: [
    13 de Setembro de 2023
  ],
  doc,
)

= Questão

Considere uma variável aleatória X definida através do seguinte experimento probabilístico. Um dado honesto é lançado.

- Se o resultado for ímpar, então $X = 0$;
- Se o resultado for par, então $X$ é sorteada de acordo com a distribuição exponencial com parâmetro $λ = 2$.

#set enum(numbering: "(a)")

+ Determine e esboce a PDF de $X$
+ Determine e esboce a CDF de $X$
+ Determine a média de $X$
+ Determine $Pr[-2 <= X <= 2]$

= Desenvolvimento

== PDF

Utilizando o teorema da probabilidade total, temos que:

$
f_X (x) &= f_X (x | U = 1 or U = 3 or U = 5)Pr[U = 1 or U = 3 or U = 5] \
        &+ f_X (x | U = 2 or U = 4 or U = 6)Pr[U = 2 or U = 4 or U = 6]
$

A partir disto temos que a PDF de $X$ é dada por:

$
f_X (x) &= 1/2 delta(x) + 1/2 2e^(-2x) \
        &= 1/2 delta(x) + e^(-2x)
$

== CDF

Para obter a CDF de $X$ basta integrar a PDF de $X$:

$
  F_X (x) &= integral_(-infinity)^(x) f_X (x) x \
          &= 1/2 integral_(-infinity)^(x) delta(x)  + integral_(-infinity)^(x) e^(-2x)  \
          &= 1/2 + 1/2 e^(-2x)
$