#import "../diagrams.typ": diamond-coordinates
#import "@preview/pepentation:0.3.0": definition, example, quote

== Условие
#quote[
  - Старт в $(0,0)$; бесконечно повторяем строку команд `L`, `R`, `U`, `D`, двигаясь по одной клетке.
  - Выход — первое касание $abs(X) + abs(Y) = x$.
  - Найти точку выхода или сообщить, что его нет.
]

== Из ромба в квадрат
$ u = X - Y, quad v = X + Y. $
$ abs(X) + abs(Y) = max(abs(u), abs(v)). $
#definition[
  Внутри ромба:
  $ -x < u < x, quad -x < v < x. $
]
Теперь достаточно отслеживать четыре границы двух координат.

== Та же траектория в новых координатах
#grid(columns: (1fr, auto, 1fr), align: center + horizon, column-gutter: 9pt, row-gutter: 8pt,
  [*Координаты $X, Y$*], [], [*$u = X-Y$, $v = X+Y$*],
  scale(x: 80%, y: 80%, reflow: true, diamond-coordinates()), [$=>$], scale(x: 80%, y: 80%, reflow: true, diamond-coordinates(transformed: true)),
)
#example[
  *Пример* $x = 4$, путь `RURU`: выход $(2,2)$ → $(0,4)$.
  Оранжевая сторона $X+Y=x$ превращается в границу $v=x$.
]

== Один проход описывает все повторения
- Сначала проверим выход на первом проходе.
- Для $z in {u,v}$: экстремумы префиксов $m_z, M_z$ и сдвиг $delta_z$.
- Каждый повтор — та же траектория со сдвигом. После $k$ полных проходов диапазон:
  $ [k delta_z + m_z, k delta_z + M_z]. $

$(D_X,D_Y)$ — сдвиг за строку.
$ delta_u = D_X - D_Y, quad delta_v = D_X + D_Y. $

== Пропускаем безопасные проходы
Индекс первого опасного прохода, считая с нуля:
$ K_z = cases(
  ceil((x - M_z) / delta_z) & delta_z > 0,
  ceil((x + m_z) / (-delta_z)) & delta_z < 0,
  infinity & delta_z = 0.
) $
- $K = min(K_u, K_v)$. При $K = infinity$ выхода нет.
- Пропускаем $K$ полных проходов. Из $(K D_X, K D_Y)$ идём пошагово до первого касания стены.
- Итого $O(n)$.