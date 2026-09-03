
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
