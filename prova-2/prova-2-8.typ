#import "../typst-ifsc/template-article.typ": article

#show: doc => article(
  title: [
    Prova 2
  ],
  subtitle: [
    Processos Estocásticos
  ],
  authors: (
    [Gabriel Luiz Espindola Pedro],
  ),
  date: [
    19 de Setembro de 2023
  ],
  doc,
)

= Questão
// TODO: Verificar se `"Unif"` é a maneira correta de escrever a distribuição uniforme no typst.
Sejam $U_1, U_2, U_3 dash.wave "Unif"({0,1,2})$ variáveis aleatórias sorteadas independentemente. Sejam

$ X = U_1 + U_2 + U_3 \ Y = U_1 + U_2 - U_3 $

#enum(numbering: "(a)")

+ Determine a PMF conjunta de $X$ e $Y$.
+ Determine e esboce as PMFs marginais de $X$ e $Y$.
+ Determine e esboce as PMFs de $X$ dado que $Y = y$, para dois valores de $y in S_Y$ à sua escolha.

= Desenvolvimento

== PMF conjunta de $X$

== PMF conjunta de $Y$

== PMFs marginais de $X$ e $Y$

=== Esboços das PMFs marginais de $X$ e $Y$

== PMFs de $X$ dado que $Y = y$
