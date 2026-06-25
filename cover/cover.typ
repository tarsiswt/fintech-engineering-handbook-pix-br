// Audiobook / ebook cover — 1200x1800px (compile at --ppi 72: 1pt -> 1px).
// quarto typst compile cover.typ cover.png --ppi 72
#set page(width: 1200pt, height: 1800pt, margin: 0pt, fill: rgb("#fbf9f4"))

#let teal = rgb("#0b7c72")
#let ink = rgb("#23262b")
#let muted = rgb("#555b64")

// Faint ledger rules across the whole cover (texture, nods to "the ledger").
#for i in range(0, 36) {
  place(top + left, dy: 110pt + i * 46pt,
    line(start: (90pt, 0pt), end: (1110pt, 0pt),
      stroke: 0.5pt + teal.transparentize(90%)))
}

// Double frame.
#place(top + left, dx: 56pt, dy: 56pt,
  rect(width: 1088pt, height: 1688pt, stroke: 2pt + teal))
#place(top + left, dx: 72pt, dy: 72pt,
  rect(width: 1056pt, height: 1656pt, stroke: 0.75pt + teal.transparentize(45%)))

// Title.
#place(top + left, dx: 126pt, dy: 268pt,
  block(width: 980pt)[
    #set par(leading: 16pt)
    #text(font: "Didot", size: 116pt, weight: "bold", fill: ink)[Fintech\ Engineering\ Handbook]
  ])

// Accent rule.
#place(top + left, dx: 134pt, dy: 720pt,
  line(length: 260pt, stroke: 4pt + teal))

// Subtitle.
#place(top + left, dx: 132pt, dy: 772pt,
  block(width: 840pt)[
    #set par(leading: 14pt)
    #text(font: "Baskerville", size: 44pt, style: "italic", fill: muted)[Patterns for building software that handles money]
  ])

// Author + source.
#place(bottom + left, dx: 132pt, dy: -268pt,
  text(font: "Avenir Next", size: 40pt, tracking: 2pt, weight: "medium", fill: ink)[Voytek Pitula])
#place(bottom + left, dx: 134pt, dy: -214pt,
  text(font: "Menlo", size: 20pt, fill: teal)[github.com/Krever/fintech-engineering-handbook])
