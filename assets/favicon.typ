// Favicon — teal square with a paper-coloured serif "F" (matches the cover).
// Run from repo root:
// quarto typst compile assets/favicon.typ assets/favicon.png --ppi 72   -> 512x512 px
#set page(width: 512pt, height: 512pt, margin: 0pt, fill: rgb("#0b7c72"))
#place(center + horizon, dy: 18pt,
  text(font: "Didot", size: 380pt, weight: "bold", fill: rgb("#fbf9f4"))[F])
