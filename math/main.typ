
#import "@preview/ilm:1.4.2": *


#show heading: it => {
  v(2.4em, weak: true)
  it
  v(1.2em, weak: true)
}


#show: ilm.with(
  title: [Теория по матану],
  author: "Кто автор? Я не знаю! (by @ERR_4O4)",
  date: datetime(year: 2026, month: 05, day: 05),
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



= Пределы

== Замечательные пределы
$ lim_(x->0)(sin(x)/x) = 1 $ #parbreak()
$ lim_(x->0)(1+x)^(1/x) = lim_(x->infinity)(1+1/x)^x = e $

== Эквивалентности при $x->0$
- $ sin(x)~x $
- $ tg(x) ~ x $
- $ arcsin(x) ~ x $
- $ arctan(x) ~ x $
- $ 1 - cos(x) ~ x^2/2 $
- $ a^x-1~x ln(a) $
- $ ln(1+x)~x $
- $ (1+x)^alpha - 1 = alpha x $
- $ x-sin(x) ~ x^3/6 $
- $ tg(x) - x ~ x^3/6 $
- $ arcsin(x) - x ~ x^3/6 $
- $ x - arctan(x) ~ x^3/6 $

== Тейлор и Маклорен
$f(x) & = sum_(k=0)^n (f^((k))(x_0))/(k!) (x-x_0)^k + o((x-x_0)^n) #h(2em)$  и #text("    ")  $f(x) & = sum_(n=0)^infinity (f^((n))(0))/(n!) x^n$
#pagebreak()

= Немного формул
== Таблица интегралов
#grid(
  columns: (1fr, 1.1fr),
  [
    $ integral(0) "dx" & = c $
    $ integral d F(x) = F(x) + c $
    $ integral "dx" = x + c $

    $ integral x^alpha "dx" = x^(alpha+1)/(alpha+1) + c $
    $ integral ("dx") / x = ln abs(x) + c $
    $ integral alpha^x "dx" = alpha^x / (ln a) +c $

    $ integral sin(x) "dx" = - cos(x) + c $
    $ integral cos(x) "dx" = sin(x) + c $

    $ integral tg(x) "dx" = -ln abs(cos(x))+ c $
    $ integral ctg(x) "dx" = ln abs(sin(x)) + c $

    $ integral ("dx")/(sin x) = ln abs(tg(x/2)) +c $
    $ integral ("dx")/(cos x) = ln abs(tg(x/2 + pi/2))+c $

    $ integral log_a x "dx" = x/ln(a)(ln(x) - 1) + c $
    $ integral ln x "dx" = x(ln x - 1) + c $

    $ integral ("dx")/(x^2-a^2) = 1/(2a)ln abs((x-a)/(x+a)) +c $
    $ integral ("dx")/(a^2-x^2) = 1/(2a)ln abs((a+x)/(a-x)) +c $

  ],
  [

    $ integral ("dx")/(x^2 + a^2) = 1/a arctan(x/a) + c $
    $ integral ("dx")/(sqrt(a^2- x^2)) = arcsin(x/a) + c $

    $ integral sqrt(a^2-x^2) "dx" = x/2 sqrt(a^2-x^2) + a^2/2 arcsin(x/a) + c $
    $
      integral sqrt(x^2 plus.minus a) "dx" = x/2sqrt(x^2 plus.minus a) plus.minus a/2 ln abs(x + sqrt(x^2 plus.minus a)) + c
    $
    $ integral ("dx" ) / (sqrt(x^2 plus.minus a)) = ln abs(x + sqrt(x^2 plus.minus a)) + c $

    $ integral (f'(x))/(f (x) ) "dx" = ln abs(f(x)) +c $
    $ integral (f'(x))/sqrt(f(x)) "dx" = 2 sqrt(f(x)) + c $

    $ integral "sh" x "dx" = "ch" x + c $
    $ integral "ch" x "dx" = "sh" x + c $

    $ integral "th" x "dx" = ln abs("ch" x) + c $
    $ integral "cth" x "dx" = ln abs("sh" x) + c $

    $ integral ("dx") / ("ch"^2 x ) = "th" x + c $
    $ integral ("dx") / ("sh"^2 x ) = - "cth" x + c $

    $ integral ("dx")/ ("sh" x) = ln abs("th" x/2) + c $
    $ integral ("dx")/ ("ch" x) = arctan("sh" x) + c $
  ],
)

*Теорема Ньютона-Лейбница:* $integral_a^b f(x) "dx" = F(x) |_a^b = F(b)- F(b)$ #parbreak()
*Интеграл по частям:* $integral u "dv" = u v - integral v "du"$
== В полярных координатах
D: $alpha <= phi <= beta$ , $0<=r <= r(phi)$ #parbreak()
$ integral_alpha^beta (r^2(phi))/2 d phi $
== В Параметрическом виде
$display(cases(x = x(t), y = y(t)))$
$t in [alpha;beta]$ #parbreak()
$S = integral_alpha^beta y(t) x'(t) "dt"$ #h(2em) (по часовой)
== Длина кривой $gamma(t) = x(t) times y(t)$
$ L = abs(gamma) = integral_a^b sqrt((x'(t))^2 + (y'(t))^2) "dt" $
если $x = t => gamma(x) = (x;y(t))$: #parbreak()
$ L = integral_a^b sqrt(1 + (y'(x))^2) "dx" $ #parbreak()
если $t = phi => gamma(phi) = (r(phi) cos(phi); r(phi) sin(phi))$: #parbreak()
$ L = integral_a^b sqrt(r^2(phi) + r'(phi)^2) d phi $
== Вычисление объема
$V = integral_a^b S(x) "dx"$ #h(2em) ($S(x)$ --- площадь сечения)#parbreak()
Объем тела вращение вокруг оси $O_x$: #parbreak()
$ V = pi integral_a^b y^2(x) $

Объем тела вращение вокруг оси $O_y$: #parbreak()
$ V = pi integral_a^b x^2(y) "dy" $ #parbreak()
$ V = 2pi integral_a^b x y(x) "dx" $


#pagebreak()

= Определенный интеграл

== def
== Свойства
== Интегрирование по частям
== Необходимое условие интегрирования
== Теорема о среднем (с доказательством)

== Примеры
- Вычисление суммы ряда с помощью опр. интеграла
- Интегрирование с помощью универсальной тригометрической подстановки
- Вычисление интегралов от нечетных/четных функций по [-a,a]
- Св-ва определенного интеграла как функции верхнего предела

= Геометрические и физические приложения определенного интеграла

== Примеры
- Формулы площади, длины дуги, объема тела вращения
- Статические моменты, координаты центра масс, моменты инерции

= Несобственные

== def
== Свойства
== Признаки сходимости
== Примеры

- несобственные, двойные, тройные интегралы
- интеграл Пуассона

= Двойные интегралы

== def
== Свойства
== Переход к повт
== Теорема Фуббаки (формулировка)
== Замена координат, геометрический смысл Якобиана
== полярная система координат
== Примеры


= Тройные интегралы
== Цилиндрическая, сферическая система координат

= Криволинейный интегралы 1 и 2 рода
== def
== Свойства
== Формулы для вычисления
== Формула Грина
== Формула Стокса
== Примеры

= Поверхностные интегралы 1 и 2 рода
== def
== Свойства
== Формулы для вычисления
== Формула Остроградского-Гаусса
== grad, rot, div, циркуляция поток,потенциальное поле
== Примеры
