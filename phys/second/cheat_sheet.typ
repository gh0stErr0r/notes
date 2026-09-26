/*
#import "@preview/ilm:1.4.2": *


#show heading: it => {
  v(2.4em, weak: true)
  it
  v(1.2em, weak: true)
}


#show: ilm.with(
  title: [Шпаргалка по физике],
  author: "Кто автор? Я не знаю! (by @gh0st_err)",
  date: datetime(year: 2026, month: 09, day: 19),
  abstract: [
    No AI $times$ $"Generation"/"Slop"$.
  ],
  figure-index: (enabled: true),
  table-index: (enabled: true),
  listing-index: (enabled: true),
)
*/
#set page(margin: 12.5mm)
#set par(leading: 2em, spacing: 1.6em)
#set page(margin: (inside: 2.5cm, outside: 2cm, y: 2cm))

#show math.equation: set text(font: "Fira Math")
#show math.equation.where(block: true): set align(left)
#set math.equation(numbering: none)
== Точечный заряд
$e = 1,602 dot 10^(-19)$ Кл\
$q=N dot   e$\
$F = k  (q_1 dot q_2)/(r^2)$ - Сила взаимодействия двух ТОЧЕЧНЫХ зарядов\
$arrow(E) = arrow(F)/(q_"пр")  "       " [E] = "Н"/"Кл" = "В"/"м"$ - Напряженность электрического поля ТОЧЕЧНОГО заряда
== Диполь
$arrow(p) = q arrow(l)$ - Электрический дипольный момент \
$arrow(M) = [arrow(p) times arrow(E)]$ - Момент сил \
$A_(1 arrow 2) = p E (cos(alpha_2) - cos(alpha_1) ) $ - Работа сил электического поля \
== Поток вектора
$d Phi = (arrow(E) , d arrow(S)) = E dot d S cos(alpha)$ - Элем. поток через б. м. поверхность dS \
$Phi = integral_S d Phi = integral_S E cos(alpha) d S = integral_S arrow(E) d arrow(S)$ - Элем. поток через поверхность S \
$Phi = integral.cont_S d Phi = integral.cont_S E d S cos(alpha) = integral.cont_S arrow(E) d arrow(S)$ - Поток через замкнутую пов. S\
$Phi = integral.cont_S arrow(E) d arrow(S) = (q_"вн")/(epsilon_0)$ - Теорема Гаусса\
$E(r) = tau/(2 pi epsilon_0 epsilon r)$ - Напряденность бесконечно длинной нити \
$E = sigma/(2 epsilon_0 epsilon)$ - Напряденность бесконечно равномерно заряженной плоскости \
$E = cases(sigma/(epsilon_0 epsilon) ", между плоскостями",  0 ", снаружи плоскостей")$ - Напряденность бесконечно равномерно заряженных двух плоскостей\
== Потенциал

$phi = W/(q_"пр")"     " phi["В"]$ \
$A_12 = W_1 - W_2 = - Delta W$ \
$A_12 = q(phi_1 - phi_2)$ \
$arrow(E) = - gradient phi $

== Ветор эл индукции
$arrow(D) = epsilon epsilon_0 arrow(E)$\
$arrow(D) = arrow(P) +  epsilon_0 arrow(E)$\
$integral.cont_S arrow(D) dot d arrow(S) = q_"св вн"$\
== Конденсатор
$C = q/phi$ [Ф] - фарада \ 
$C = q/(Delta phi) = q/U$ \ 
$C = (epsilon epsilon_0 S)/d$ - Емкость плоского конденсатора\
$C = (2 pi epsilon_0 L)/( ln ((R_2)/(R_1))  )$ - Емкость цилиндрического конденсатора\
$C = 4 pi epsilon_0 (R_1 R_2)/(R_2 - R_1)$ - Емкость сферического конденсатора\

== Электрический ток
$I = (d q)/(d t)$ - [А] Ампер\
$I = integral_S arrow(j) d arrow(S)$\

== Стронние силы и ЭДС
$Epsilon = A/q$ [$Epsilon$] = В\
