
// variables
#let vc = math.arrow
#let vv = $vc(v)$ 
#let uu = $vc(u)$ 
#let inv(expression) = { $(expression)^(-1)$ }
#let implies = $==>$
#let impl = $==>$
#let iff = $<==>$
#let qed = [#v(0.2em)#h(1fr)$square.big$]
#let cqfd = [#v(0.2em)#h(1fr)$square.big$]
#let NNp = $NN^+$

#let exo_c = counter("exercice")

#let colorscbox = (
  définition: (bg: rgb(187, 212, 242), name: rgb(28, 68, 117)),
  théorème: (bg: rgb(170, 220, 170), name: rgb(25, 55, 25)),
  red: (bg: rgb(240, 165, 165), name: rgb(95, 30, 30)),
  propriété: (bg: rgb(205, 170, 240), name: rgb(70, 45, 95)),
  algorithme: (bg: rgb(209, 209, 209), name: rgb(59, 59, 59)),
  exercice: (bg: rgb(209, 209, 209), name: rgb(59, 59, 59)),
)

#let conf(
  title: "Title",
  class: "Maths",
  author: "Begue Ruben",
  date: "date",
  doc
) = {
  set text(12pt)
  set par(justify: true)
  set page(header: [
    _ #author _
    #h(1fr)
    #class
  ])
  set heading(numbering: "I.1.a.")
  show heading: it => [
    #text(14pt, weight: "bold")[#it]
    #v(6pt)
  ]
  show raw: set text(font: "JetBrains Mono NL Slashed") 
  show math.equation: set text(font: "Libertinus Math") 
  align(center)[
    #text(16pt,  weight: "bold")[#title] \ 
    #date
  ]
  doc
}

#let cbox(
  type,
  name,
  body,
) = {
  pad(left: 1%, right: 1%)[
    #block(
      width: 100%,
      fill: colorscbox.at(type).bg,
      radius: 3pt,
      outset: (x: .5em, y: .5em),
    )[
      #text(size: 12pt, weight: "bold", fill: colorscbox.at(type).name)[#name]\
      #text(size: 10pt, body)
    ]
  ]
}

#let exo(
  title,
  body
) = {
  set enum(numbering: "a.")
  cbox(  
    "exercice",
    [Exercice #exo_c.step() #context {exo_c.display()}: #title],
    body
  )
}

#let ans(body) = {
  set enum(numbering: "a.")
  text(size: 10pt, body)
}
