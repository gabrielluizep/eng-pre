#import "./typst-ifsc/templates/article.typ": article

#show: doc => article(
  title: "Anotações",
  subtitle: "Processos Estocásticos",
  authors: ("Gabriel Luiz Espindola Pedro",),
  // date: "3 de Outubro de 2023",
  doc,
)

= Função Massa de Probabilidade (PMF)

$
p_X (x) = Pr[X= x]
$

== Propriedades da PMF

#grid(
  columns: (1fr, 1fr),
  rows: 1,
  [#align(horizon)[$ 0 <= p_X (x) <= 1 $]],
  [#align(horizon)[$ sum_(x in S_X) p_X (x) = 1 $]],
)

= Função Densidade de Probabilidade (PDF)

$
Pr[X in A] = integral_(x in A) f_X (x) dif x
$

= Função de Distribuição Cumulativa (CDF)

$
F_X (x) = Pr[X <= x]
$

#grid(
  columns: (1fr, 1fr),
  rows: 1,
  [#align(horizon)[$ F_X (x) = sum_(u <= x) p_X (u) $]],
  [#align(horizon)[$ F_X (x) = integral_(-infinity)^x f_X (u) dif u $]],
)

= Valor Esperado

- Valor esperado também pode ser chamado de média

$
E[X] = mu_X
$

#grid(
  columns: (1fr, 1fr),
  rows: 1,
  [#align(horizon)[$ E[X] = sum_(x in S_X) x p_X (x) $]],
  [#align(horizon)[$ E[X] = integral_(-infinity)^infinity x f_X (x) dif x $]],
)

== Propriedades do valor esperado

#grid(
  columns: (1fr, 1fr),
  rows: 2,
  row-gutter: 2em,
  [#align(horizon)[$ E[c] = c $]],
  [#align(horizon)[$ E[c X] = c E[X] $]],
  [#align(horizon)[$ E[X + c] = E[X] + c $]],
  [#align(horizon)[$ E[X + Y] = E[X] + E[Y] $]],
)

== Teorema fundamental do valor esperado

#grid(
  columns: (1fr, 1fr),
  rows: 1,
  [#align(horizon)[$ E[g(x)] = sum_(x in S_X) g(x) p_X (x) $]],
  [#align(
      horizon,
    )[$ E[g(x)] = integral_(-infinity)^infinity g(x) f_X (x) dif x $]],
)