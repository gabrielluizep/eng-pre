#import "@preview/physica:0.8.0": *
#import "@preview/cetz:0.1.2": *

#import "../typst-ifsc/templates/article.typ": article

#show: doc => article(
  title: "Prova 4",
  subtitle: "Processos Estocásticos",
  authors: ("Gabriel Luiz Espindola Pedro",),
  date: "16 de Outubro de 2023",
  doc,
)

= Questão

Sejam $X_1, X_2, X_3 tilde.op "Unif"({-1,1})$ variáveis aleatórias sorteadas
independentemente.

#enum(
  numbering: "(a)",
)[
  Sejam

  $
  Y_1 &= X_1\
  Y_2 &= X_1 X_2\
  Y_3 &= X_1 X_2 X_3\
  $

  Determine o vetor média e a matriz covariância do vetor aleatório $va(Y) = vecrow(Y_1, Y_2, Y_3)^TT$
][
  Sejam

  $
  Z_1 = Y_1 + Y_2\
  Z_2 = Y_2 + Y_3\
  Z_3 = Y_3 + Y_1\
  $

  Determine o vetor média e a matriz covariância do vetor aleatório $va(Z) = vecrow(Z_1, Z_2, Z_3)^TT$.
  *Utilize a formulação matricial*
]

#pagebreak()

= Resolução

== Vetor média de $va(Y)$

O vetor média é definido por:

$
va(mu)_va(Y) = E[va(Y)]
$

lembrando que a média de um vetor aleatório $va(X)$ é definida por:

$
va(mu)_va(X) = vecrow(E[Y_1], E[Y_2], ..., E[Y_n])^TT
$

E lembrando que a média de uma variável aleatória $X$ é definida por:

$
E[X] = sum_(x in X) x P(X = x)
$

Para a distribuição $"Unif"({-1, 1})$ a probabilidade de que seja sorteado um
valor pertencente a cada ponto no conjunto ${-1, 1}$ é igual $1/2$ porque a
probabilidade total deve ser igual a 1 e temos dois itens possíveis de ser
sorteado.

Dito isso, podemos calcular a média de $va(Y)$:

$
va(mu)_va(Y) &= vecrow(E[Y_1], E[Y_2], E[Y_3])^TT \
va(mu)_va(Y) &= vecrow(E[X_1], E[X_1 X_2], E[X_1 X_2 X_3])^TT \
va(mu)_va(Y) &= vecrow(E[X_1], E[X_1] dot.op E[X_2], E[X_1] dot.op E[X_2] dot.op E[X_3])^TT
$

Calculando cada uma das médias:

$
E[X_1] = E[X_2] &= E[X_3] = sum_(x in X) x P(X = x) \
&= 1 dot.op P(X = 1) + (-1) dot.op P(X = -1) \
&= 1 dot.op 1/2 + (-1) dot.op 1/2 \
&= 0
$

Para $Y_2$ e $Y_3$ temos uma multiplicação de variáveis aleatórias, sabendo que $X_1$ e $X_2$ são
independentes, podemos calcular a média de $Y_2$ e $Y_3$ da seguinte forma:

#grid(columns: (1fr, 1fr), [
  $
  E[Y_2] &= E[X_1 X_2] \
  &= E[X_1] E[X_2] \
  &= 0
  $
], [
  $
  E[Y_3] &= E[X_1 X_2 X_3] \
  &= E[X_1] E[X_2] E[X_3]\
  &= 0
  $
])

Dessa forma, podemos calcular a média de $va(Y)$:

$
va(mu)_va(Y) &= vecrow(E[Y_1], E[Y_2], E[Y_3])^TT \
&= vecrow(0, 0, 0)^TT \
$

== Matriz covariância de $va(Y)$

A matriz covariância é definida por:

$
va(C)_va(Y) = E[(va(Y) - va(mu)_va(Y))(va(Y) - va(mu)_va(Y))^TT]
$

Como já calculado anteriormente a média de $va(Y)$ é igual a 0 e portanto:

$
va(C)_va(Y) &= E[va(Y) dot.op va(Y)^TT]\
&= E[va(Y)] dot.op E[va(Y)^TT]\
&= vecrow(0, 0, 0)^TT dot.op vecrow(0, 0, 0)\
&= zmat(3)
$

== Vetor média de $va(Z)$

Uma vez realizado todo o cálculo de média de $va(Y)$, podemos então calcular a
média de $va(Z)$, aplicando as propriedades da média obtemos:

$
va(mu)_va(Z) &= E[va(Z)]\
&= E[vecrow(Z_1, Z_2, Z_3)^TT]\
&= vecrow(E[Z_1], E[Z_2], E[Z_3])^TT\
&= vecrow(E[Y_1 + Y_2], E[Y_2 + Y_3], E[Y_3 + Y_1])^TT\
&= vecrow(E[Y_1] + E[Y_2], E[Y_2] + E[Y_3], E[Y_3] + E[Y_1])^TT\
&= vecrow(0, 0, 0)^TT\
$

== Matriz covariância de $va(Z)$

Com os valores de média em mãos podemos obter a covariância de $va(Z)$:

$
va(C)_va(Z) &= E[(va(Z) - va(mu)_va(Z))(va(Z) - va(mu)_va(Z))^TT]\
&= E[va(Z) dot.op va(Z)^TT]\
&= E[va(Z)] dot.op E[va(Z)^TT]\
&= vecrow(0, 0, 0)^TT dot.op vecrow(0, 0, 0)\
&= zmat(3)
$