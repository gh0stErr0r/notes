
#import "@preview/ilm:1.4.2": *


#show heading: it => {
  v(2.4em, weak: true)
  it
  v(1.2em, weak: true)
}


#show: ilm.with(
  title: [Теория по матану],
  author: "Кто автор? Я не знаю! (by @gh0st_err)",
  date: datetime(year: 2026, month: 09, day: 03),
  abstract: [
    No AI $times$ $"Generation"/"Slop"$.
  ],
  figure-index: (enabled: true),
  table-index: (enabled: true),
  listing-index: (enabled: true),
)

#set page(margin: 12.5mm)
#set par(leading: 0.8em, spacing: 1.6em)
#show math.equation: set text(font: "Fira Math")
#show math.equation.where(block: true): set align(left)
#set math.equation(numbering: none)


= Понятие ОДУ и его решения

Обыкновенным дифференциальным уравнением (ОДУ) первого порядка называется соотношение вида:

(1) $(x, y, y') in Mu$ \
где $Mu subset.eq RR^(2n+1)$, есть некоторое заданное подможество. Решением ОДУ (1) называется определенная на некотором открытом промежутке $Delta subset.eq RR$ вектор-функция  $y:RR -> RR^n$, дифференцируемая в каждой точке $x in Delta$ и удовлетворяющая в каждой точке соотношению $(x, y(x), y'(x)) in Mu$

Подмоножество $Mu$ обычно задается как множество уровня некоторой вектор-фунции $F: RR^(2n+1) -> RR^m $. При этом соотношение (1) принимает вид \
(2) $F(x,y,y') = 0 in RR^(m)$

Решением ОДУ вида (2) является определенная на $Delta subset.eq RR$ вектор-функция $y: RR -> R^n$, в каждой точке $x in Delta$ удовлетворяющая соотношению $(x, y(x), y'(x)) in "dom" F$ и равенству $F(x,y(x), y'(x)) = 0$


В случае $m>1$ уравнение (2) нередко рассматривают покоординатно и потому называют системой ОДУ. Например, отвечающее вектор-функции $F: RR^5 -> RR^2$ вида

$F(t_0, t_1, t_2, t_3, t_4) = mat(t_3 - t_2; t_4 - (t_0)^2 dot t_1)$

(векторное) уравнение
$mat(y'_0 - y_1 ; y'_1 - x^2 dot y_0) = mat(0;0)$ \
может быть понято также как система из двух (скалярных) уравнений

(3) $cases(y'_0=y_1, y_1 = x^2 dot y_0)$
