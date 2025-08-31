// === Farben definieren (aus dem ursprünglichen LaTeX-Template) ===
#let light_bm_green = rgb("#bce2cc")
#let bm_green = rgb("#00923f")
#let dark = rgb("#495057")
#let code_bg = rgb("#e9ecef")

// === Schriftart konfigurieren ===
// Arial für normalen Text, Courier New für Code
#set text(font: "Arial")

// === Code-Block-Formatierung ===
#show raw.where(block: true): it => block(
  fill: code_bg,
  inset: 8pt,
  radius: 4pt,
  width: 100%,
)[
  #set text(font: "Courier New")
  #it
]

#show raw.where(block: false): it => box(
  fill: code_bg,
  inset: (x: 3pt, y: 0pt),
  outset: (y: 3pt),
  radius: 2pt,
)[
  #set text(font: "Courier New")
  #it
]

// === Seitenlayout konfigurieren (entspricht LaTeX: left=20mm, top=20mm, bottom=20mm, right=30mm) ===
#set page(
  paper: "a4",
  margin: (
    top: 20mm,
    bottom: 20mm,
    left: 20mm,
    right: 30mm
  ),
  background: {
    // Rechte Farbleiste (2cm wie im LaTeX-Template)
    place(
      right,
      rect(
        width: 20mm,
        height: 100%,
        fill: light_bm_green
      )
    )
    // Logo AUF dem grünen Streifen - perfekt zentriert
    place(
      top + right,
      dx: 0mm, // Ganz rechts (über dem grünen Balken)
      dy: -5mm, // Etwas höher als vorher
      block(
        width: 20mm, // Exakte Breite des grünen Balkens
        height: 20mm, // Genug Höhe für das Logo  
        align(center + horizon)[
          #image(
            "_extensions/SchmidtPaul/BioMathQuartoPDFTemplate/BioMath_logo_name_1500x411.png",
            width: 15mm
          )
        ]
      )
    )
    // Seitenzahl AUF dem grünen Balken - perfekt zentriert  
    place(
      bottom + right,
      dx: 0mm,
      dy: -3mm,
      block(
        width: 20mm, // Exakte Breite des grünen Balkens
        height: 10mm, // Genug Höhe für den Text
        align(center + horizon)[
          #text(fill: bm_green, size: 10pt, weight: "bold")[
            #context {
              let current = counter(page).get().first()
              let total = counter(page).final().first()
              [#current/#total]
            }
          ]
        ]
      )
    )
  }
)

// === Überschriftenformatierung (entsprechend LaTeX-Template) ===
#show heading.where(level: 1): it => block[
  #set text(size: 20pt, fill: dark, weight: "bold")
  #upper(it.body) // MakeUppercase wie im LaTeX
  #v(0.3cm)
]

#show heading.where(level: 2): it => block[
  #set text(size: 20pt, fill: dark, weight: "bold")
  #it.body
  #v(0.2cm)
]

#show heading.where(level: 3): it => block[
  #set text(size: 14pt, fill: dark, weight: "bold")
  #it.body
  #line(length: 100%, stroke: 0.8pt + dark)
  #v(0.1cm)
]

// === Template als Funktion ===
#let article(
  title: "",
  subtitle: "",
  author: "",
  body
) = {
  set document(
    title: title,
    author: author
  )
  
  // Titelbereich (linksbündig wie im LaTeX-Template)
  align(left)[
    #text(size: 2em, fill: dark, weight: "bold")[#upper(title)]
    #if subtitle != "" [
      #v(0.3cm)
      #text(size: 1.2em)[#subtitle]
    ]
    #if author != "" [
      #linebreak()
      // Tilde durch normales Leerzeichen ersetzen
      #text(size: 1em)[#author.replace("~", " ")]
    ]
    #v(0.5cm)
  ]
  
  // Dokumentkörper
  body
}
