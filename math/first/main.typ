
#import "@preview/ilm:1.4.2": *


#show heading: it => {
  v(2.4em, weak: true)
  it
  v(1.2em, weak: true)
}


#show: ilm.with(
  title: [Теория по матану],
  author: "Кто автор? Я не знаю! (by @gh0st_err)",
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

= Неопределенный интеграл
== Определение первообразной функции и неопределенного интеграла
Первообразная функция -- это функция $F(x)$ производная, которая равна исходной функции $f(x)$ #parbreak() $ F'(x) = f(x) $

Неопределенный интеграл -- это совокупность всех первообразных для функции $f(x)$ #parbreak() $ integral f(x) "dx" = F(x) + C $

== Основное свойство первообразной функции.
Если функция $F(x)$ является первообразной для $f(x)$ на некотором промежутке, то любая другая первообразная этой функции имеет вид $F(x) + C$, где $C$ — произвольная постоянная (число).
=== Доказательство
// TODO: Доказать
== Свойства

Линейность #parbreak()
$ integral k dot f(x) "dx" = k dot integral f(x) "dx" $ #parbreak()
$ integral (f(x) plus.minus g(x)) "dx" = integral f(x) "dx" plus.minus integral g(x) "dx" $ #parbreak()

Связь с дифференциалом #parbreak()
$ ( integral f(x) "dx" )' = f(x) $  #parbreak()
$ d( integral f(x) "dx" ) = f(x) "dx" $ #parbreak()
$ integral d(F(x)) = F(x) + C $ #parbreak()

Инвариантность #parbreak()
$integral f(x) "dx" = F(x) + C$ , тогда  $integral f(U) "dU" = F(U) + C$
=== Доказательство
// TODO: Доказать

== Замена переменной
$ f(phi(x)) phi'(x) "dx" = integral f(U) "dU" = F(U) + C $

Специальные подстановки: #parbreak()
- $t = sin x$ — если $R(-cos x, sin x) = -R(cos x, sin x)$ (нечётна по $cos x$) #parbreak()
- $t = cos x$ — если $R(cos x, -sin x) = -R(cos x, sin x)$ (нечётна по $sin x$) #parbreak()
- $t = tg x$ — если $R(-cos x, -sin x) = R(cos x, sin x)$ (чётна по обоим) #parbreak()



== Интегрирование по частям
$ integral u "dv" = u v - integral v "du" $

=== Доказательство
$ ("uv")' = u'v + "uv"' => "uv"' = ("uv")' - u'v => integral "uv"' "dx" = "uv" - integral u'v "dx" $

= Определенный интеграл

== Определение интеграла Римана
Интегральная сумма Римана: $ sigma(f, R, xi) = sum_(i=0)^(n-1) f(xi_i)(x_(i+1) - x_i) $
Диаметр разбиения $Delta$ — длина наибольшего отрезка разбиения. #parbreak()
Если существует $lim_(Delta -> 0) sigma(f, R, xi) = I$ и не зависит ни от способа разбиения, ни от выбора $xi_i$, то $f(x)$ интегрируема на $[a,b]$ и $I = integral_a^b f(x) d x$.


== Геометрический смысл определенного интеграла
Если $f(x) >= 0$ на $[a,b]$, то $integral_a^b f(x) d x$ равен площади криволинейной трапеции, ограниченной графиком $y = f(x)$, прямыми $x = a$, $x = b$ и осью $O x$.


== Необходимое условие интегрирования
Если $integral_a^b f(x) d x$ существует, то $f(x)$ ограничена на $[a,b]$.

=== Доказательство
// TODO: Доказать

== Свойства интегральных сумм Дарбу. Критерий интегрируемости функции
=== Доказательство
// TODO: Доказать

== Интегрируемость монотонных функций
=== Доказательство
// TODO: Доказать

== Некоторые классы интегрируемых функций (непрерывных функций и кусочно-непрерывных ограниченных функций )
- Если $f(x)$ непрерывна или кусочно-непрерывна на $[a,b]$ — интегрируема (т. Коши) #parbreak()
- Если $f(x)$ монотонна и ограничена на $[a,b]$ — интегрируема

== Свойства
$ integral_a^a f(x) d x = 0 $
$ integral_a^b d x = b - a $
$ integral_a^b (alpha f(x) + beta g(x)) d x = alpha integral_a^b f(x) d x + beta integral_a^b g(x) d x $
$ integral_a^b f(x) d x = integral_a^c f(x) d x + integral_c^b f(x) d x $
$ integral_a^b f(x) d x = -integral_b^a f(x) d x $
Если $f(x) >= 0$ на $[a,b]$, то $integral_a^b f(x) d x >= 0$ #parbreak()
Если $f(x) >= g(x)$ на $[a,b]$, то $integral_a^b f(x) d x >= integral_a^b g(x) d x$ #parbreak()
$ |integral_a^b f(x) d x| <= integral_a^b |f(x)| d x $
$ m(b-a) <= integral_a^b f(x) d x <= M(b-a) $
Если $f(x)$ чётная: $integral_(-a)^a f(x) d x = 2 integral_0^a f(x) d x$ #parbreak()
Если $f(x)$ нечётная: $integral_(-a)^a f(x) d x = 0$
=== Доказательство
// TODO: Доказать


== Теорема о среднем
Если $f(x)$ непрерывна на $[a,b]$, то $exists x_0 in [a,b]$: $ integral_a^b f(x) d x = f(x_0)(b-a) $

=== Доказательство
// TODO: Доказать

== Интеграл с переменным верхним пределом. Непрерывность интеграла с переменным верхним пределом
$ I(t) = integral_a^t f(x) d x $
$I(t)$ непрерывна на $[a,b]$ при $f(x)$ интегрируемой на $[a,b]$.
=== Доказательство
// TODO: Доказать

== Дифференцируемость интеграла с переменным верхним пределом
Если $f(x)$ непрерывна на $[a,b]$, то $I(t) = integral_a^t f(x) d x$ дифференцируема и $ I'(t) = f(t) $

=== Доказательство
// TODO: Доказать

== Формула Ньютона-Лейбница
$ integral_a^b f(x) d x = F(b) - F(a) $
где $F(x)$ — любая первообразная $f(x)$.
=== Доказательство
// TODO: Доказать

== Замена переменной и интегрирование по частям в определенном интеграле
Замена переменной $x = phi(t)$, $phi(alpha) = a$, $phi(beta) = b$: $ integral_a^b f(x) d x = integral_alpha^beta f(phi(t)) phi'(t) d t $
Интегрирование по частям: $ integral_a^b u d v = u v |_a^b - integral_a^b v d u $
=== Доказательство
// TODO: Доказать

== Площадь криволинейной трапеции. Площадь криволинейного сектора
$ S = integral_a^b f(x) d x $
Площадь между двумя кривыми: $ S = integral_a^b [f_2(x) - f_1(x)] d x $
Параметрически: $ S = integral_alpha^beta y(t) x'(t) d t $
Полярные координаты: $ S = 1/2 integral_(phi_1)^(phi_2) r^2(phi) d phi $
=== Доказательство
// TODO: Доказать

== Вычисление объема тела по известным площадям поперечных сечений. Объем тела вращения
По сечениям: $ V = integral_a^b S(x) d x $
Вращение вокруг $O x$: $ V = pi integral_a^b y^2(x) d x $
Вращение вокруг $O y$: $ V = pi integral_c^d x^2(y) d y = pi integral_a^b x dot y(x) d x $

=== Доказательство
// TODO: Доказать

== Длина дуги кривой. Вектор-функции. Понятие кривой в пространстве. Понятие длины дуги. Вычисление длины дуги кривой
Явное задание: $ L = integral_a^b sqrt(1 + (f'(x))^2) d x $
Параметрическое: $ L = integral_alpha^beta sqrt((x'(t))^2 + (y'(t))^2) d t $
Полярные координаты: $ L = integral_(phi_1)^(phi_2) sqrt((r'(phi))^2 + r^2(phi)) d phi $
Пространственная кривая: $ L = integral_(t_0)^T sqrt((x'(t))^2 + (y'(t))^2 + (z'(t))^2) d t $

=== Доказательство
// TODO: Доказать

== Примеры
- Вычисление суммы ряда с помощью опр. интеграла
- Интегрирование с помощью универсальной тригометрической подстановки
- Вычисление интегралов от нечетных/четных функций по [-a,a]
- Св-ва определенного интеграла как функции верхнего предела

= Геометрические и физические приложения определенного интеграла

== Примеры
- Формулы площади, длины дуги, объема тела вращения
- Статические моменты, координаты центра масс, моменты инерции


Статические моменты плоской пластины $D$ с плотностью $rho(x, y)$:
$ S_x = integral.double_D y dot rho(x, y) d x d y, quad S_y = integral.double_D x dot rho(x, y) d x d y $
Координаты центра масс:
$ x_C = S_y / m, quad y_C = S_x / m $
Моменты инерции:
$ M_x = integral.double_D y^2 dot rho(x, y) d x d y, quad M_y = integral.double_D x^2 dot rho(x, y) d x d y $


= Несобственные

== def
Интегралы с бесконечными пределами (1 рода): #parbreak()
$ integral_a^(+infinity) f(x) d x = lim_(b -> +infinity) integral_a^b f(x) d x $
$ integral_(-infinity)^b f(x) d x = lim_(a -> -infinity) integral_a^b f(x) d x $
$ integral_(-infinity)^(+infinity) f(x) d x = integral_(-infinity)^a f(x) d x + integral_a^(+infinity) f(x) d x $
Сходится если предел конечен, расходится иначе. #parbreak()

Интегралы от неограниченных функций (2 рода): #parbreak()
Особенность на верхнем пределе: $ integral_a^b f(x) d x = lim_(epsilon -> 0+0) integral_a^(b-epsilon) f(x) d x $
Особенность на нижнем пределе: $ integral_a^b f(x) d x = lim_(epsilon -> 0+0) integral_(a+epsilon)^b f(x) d x $
Особенность внутри $c in (a,b)$: $ integral_a^b f(x) d x = integral_a^c f(x) d x + integral_c^b f(x) d x $

Эталонный интеграл: $ integral_1^(+infinity) d x / x^p = cases(1/(p-1) "при" p > 1, "расходится при" p <= 1) $


== Свойства
Линейность, аддитивность — аналогично определённому интегралу. Геометрический смысл: площадь бесконечной криволинейной трапеции.


== Признаки сходимости
=== Доказательство

== Признаки сравнения
Первая теорема сравнения: если $0 <= f(x) <= g(x)$ на $[a, +infinity)$, то: #parbreak()
- из сходимости $integral_a^(+infinity) g(x) d x$ следует сходимость $integral_a^(+infinity) f(x) d x$ #parbreak()
- из расходимости $integral_a^(+infinity) f(x) d x$ следует расходимость $integral_a^(+infinity) g(x) d x$ #parbreak()

Вторая теорема сравнения (предельный признак): если $f(x) > 0$, $g(x) > 0$ и $lim_(x -> +infinity) f(x)/g(x) = K$, $0 < K < infinity$, то интегралы ведут себя одинаково.

=== Доказательство

== Абсолютная и условная сходимость интеграла от знакопеременной функции
Если сходится $integral_a^(+infinity) |f(x)| d x$, то сходится и $integral_a^(+infinity) f(x) d x$ (абсолютная сходимость). #parbreak()
Если $integral_a^(+infinity) f(x) d x$ сходится, а $integral_a^(+infinity) |f(x)| d x$ расходится — условная сходимость.


== Примеры
- несобственные, двойные, тройные интегралы
- интеграл Пуассона:  $integral_0^(+infinity) e^(-x^2) d x = sqrt(pi)/2$

= Двойные интегралы


== def
$ integral.double_D f(x, y) d s = lim_(n -> infinity \ max d_m -> 0) sum_(m=1)^n f(xi_m, eta_m) Delta s_m $
Область $D$ — область интегрирования. Достаточное условие существования: $f(x,y)$ непрерывна в замкнутой области $D$.


== Свойства
$ integral.double_D C f(x, y) d x d y = C integral.double_D f(x, y) d x d y $
$ integral.double_D [f(x,y) + g(x,y)] d x d y = integral.double_D f(x,y) d x d y + integral.double_D g(x,y) d x d y $
$
  integral.double_D f(x,y) d x d y = integral.double_(D_1) f(x,y) d x d y + integral.double_(D_2) f(x,y) d x d y, quad D = D_1 union D_2
$
Если $f >= g$ в $D$: $integral.double_D f d x d y >= integral.double_D g d x d y$ #parbreak()
$ m S <= integral.double_D f(x,y) d x d y <= M S $
Теорема о среднем: $integral.double_D f(x,y) d x d y = f(xi, eta) dot S$

== Переход к повторному
Область правильная в направлении $O y$ ($phi_1(x) <= y <= phi_2(x)$, $a <= x <= b$):
$ integral.double_D f(x,y) d x d y = integral_a^b d x integral_(phi_1(x))^(phi_2(x)) f(x,y) d y $
Область правильная в направлении $O x$ ($psi_1(y) <= x <= psi_2(y)$, $c <= y <= d$):
$ integral.double_D f(x,y) d x d y = integral_c^d d y integral_(psi_1(y))^(psi_2(y)) f(x,y) d x $



== Площадь в криволинейных координатах
$ S = integral.double_D d x d y $
=== Доказательство

== Замена координат
$ integral.double_D f(x,y) d x d y = integral.double_Omega f(x(u,v), y(u,v)) |J| d u d v $
где $J = (div(x, y))/(div(u, v)) = |mat(div x slash div u, div x slash div v; div y slash div u, div y slash div v)|$
=== Доказательство

== Геометрический смысл Якобиана
Якобиан — коэффициент искажения площади при замене координат: $d s = |J| d u d v$.


== Полярная система координат
$ x = r cos phi, quad y = r sin phi, quad J = r $
$ integral.double_D f(x,y) d x d y = integral.double_D f(r cos phi, r sin phi) dot r d r d phi $


== Приложения двойного интеграла
Площадь: $S = integral.double_D d x d y$ #parbreak()
Масса: $m = integral.double_D rho(x, y) d x d y$ #parbreak()
Статические моменты: $S_x = integral.double_D y rho d x d y$, $S_y = integral.double_D x rho d x d y$ #parbreak()
Центр масс: $x_C = S_y/m$, $y_C = S_x/m$ #parbreak()
Моменты инерции: $M_x = integral.double_D y^2 rho d x d y$, $M_y = integral.double_D x^2 rho d x d y$ #parbreak()
Площадь поверхности: $S = integral.double_D sqrt(1 + (f'_x)^2 + (f'_y)^2) d x d y$
== Примеры


= Тройные интегралы
$ integral.triple_V f(x,y,z) d v = lim_(n->infinity \ max d_k -> 0) sum_(k=1)^n f(xi_k, eta_k, zeta_k) Delta v_k $
Достаточное условие: $f$ непрерывна в замкнутой области $V$.

== Вычисление тройного интеграла
$ integral.triple_V f(x,y,z) d x d y d z = integral.double_D d x d y integral_(psi_1(x,y))^(psi_2(x,y)) f(x,y,z) d z $
Или в виде трёх последовательных интегралов:
$
  integral.triple_V f d v = integral_a^b d x integral_(phi_1(x))^(phi_2(x)) d y integral_(psi_1(x,y))^(psi_2(x,y)) f(x,y,z) d z
$

== Замена переменных в тройном интеграле
$ integral.triple_B f(x,y,z) d x d y d z = integral.triple_Omega f(x(u,v,w), y(u,v,w), z(u,v,w)) |J| d u d v d w $
$
  J = (div (x, y, z))/(div (u, v, w)) = |mat(div x slash div u, div x slash div v, div x slash div w; div y slash div u, div y slash div v, div y slash div w; div z slash div u, div z slash div v, div z slash div w)|
$

== Цилиндрическая, сферическая система координат
Цилиндрическая: $x = r cos phi$, $y = r sin phi$, $z = z$, $J = r$ #parbreak()
$ integral.triple_V f(x,y,z) d x d y d z = integral.triple_V f(r cos phi, r sin phi, z) dot r d r d phi d z $

Сферическая: $x = r sin theta cos phi$, $y = r sin theta sin phi$, $z = r cos theta$, $J = r^2 sin theta$ #parbreak()
$
  integral.triple_V f d x d y d z = integral.triple_V f(r sin theta cos phi, r sin theta sin phi, r cos theta) dot r^2 sin theta d r d phi d theta
$

Объём: $V = integral.triple_V d x d y d z = integral.triple_V r d r d phi d z = integral.triple_V r^2 sin theta d r d theta d phi$ #parbreak()
Масса: $m = integral.triple_V rho(x, y, z) d x d y d z$ #parbreak()
Статические моменты:
$
  S_(x y) = integral.triple_V z rho d V, quad S_(x z) = integral.triple_V y rho d V, quad S_(y z) = integral.triple_V x rho d V
$
Центр тяжести: $x_C = S_(y z)/m$, $y_C = S_(x z)/m$, $z_C = S_(x y)/m$ #parbreak()
Моменты инерции относительно плоскостей:
$
  I_(x y) = integral.triple_V z^2 rho d V, quad I_(x z) = integral.triple_V y^2 rho d V, quad I_(y z) = integral.triple_V x^2 rho d V
$
Моменты инерции относительно осей:
$
  I_x = integral.triple_V (y^2 + z^2) rho d V, quad I_y = integral.triple_V (x^2+z^2) rho d V, quad I_z = integral.triple_V (x^2+y^2) rho d V
$
= Криволинейный интегралы 1 и 2 рода

== def

== Свойства

== Формулы для вычисления

== Формула Грина
=== Доказательство

== Формула Стокса

== Примеры

= Поверхностные интегралы 1 и 2 рода
== def

== Свойства

== Формулы для вычисления

== Формула Остроградского-Гаусса
=== Доказательство

== grad, rot, div, циркуляция поток,потенциальное поле

== Примеры
