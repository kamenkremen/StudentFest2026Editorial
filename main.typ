#import "@preview/pepentation:0.3.0": *

#set document(
  title: "Разбор задач чемпионата Student Fest 2026",
  author: ("Закарлюка", "Плотников", "Муравьев", "Блинов"),
)
#set text(lang: "ru")

#show: setup-presentation.with(
  height: 12cm,
  title-slide: (
    enable: true,
    title: "Разбор задач чемпионата Student Fest 2026",
    authors: ("Закарлюка", "Плотников", "Муравьев", "Блинов"),
    institute: "Санкт-Петербургский государственный университет",
  ),
  footer: (
    enable: true,
    title: "Разбор SF 2026",
    institute: "СПбГУ",
    authors: ("Закарлюка", "Плотников", "Муравьев", "Блинов"),
    date: "Сентябрь 2026",
  ),
  theme: (
    blocks: (
      definition-color: rgb("#003365").lighten(55%),
      quote-color: luma(224),
      info-color: rgb("#0797a5").lighten(45%),
      example-color: rgb("#003365").lighten(70%),
      warning-color: rgb("#db7600").lighten(40%),
      failure-color: rgb("#b3341f").lighten(35%),
      hint-color: rgb("#1f7a4d").lighten(55%),
      success-color: rgb("#1f7a4d").lighten(35%),
    ),
  ),
  table-of-contents: "none",
  locale: "RU",
)

= A. Проблемы со связью #metadata((header: "Task A"))
#include "Tasks/A.typ"

= B. Гномья бюрократия #metadata((header: "Task B"))
#include "Tasks/B.typ"

= C. Секретная пара #metadata((header: "Task C"))
#include "Tasks/C.typ"

= D. Организация чемпионата #metadata((header: "Task D"))
#include "Tasks/D.typ"

= E. Потеряшка #metadata((header: "Task E"))
#include "Tasks/E.typ"

= F. Поиск составителей #metadata((header: "Task F"))
#include "Tasks/F.typ"

= G. Разбиение на отрезки #metadata((header: "Task G"))
#include "Tasks/G.typ"

= H. Шахматные проказы #metadata((header: "Task H"))
#include "Tasks/H.typ"

= I. Экзамен #metadata((header: "Task I"))
#include "Tasks/I.typ"

= J. Тактический симулятор #metadata((header: "Task J"))
#include "Tasks/J.typ"
