//#import "@preview/in-dexter:0.5.1": *

#set text(font: "Times New Roman")

#let today = datetime.today()

#set page(
  header: grid(
    columns: (1fr),
    rows: (1),
    align: (left + horizon, right + horizon),
    image("../Images/Olliter_Logo.png", width: 3cm),
    align(right, "Rev. 011 - " + today.display("[day]/[month]/[year]")),
  ),
  footer: 
    grid(
      columns: (1fr),
      rows: (1),
      align: (left + horizon, right + horizon),
      align(left, "www.olliter.com"),
      align(right, "© 2024 Olliter SAgl"),
    ),
  numbering: "1"
)

// First page of the document
#set align(center)
#linebreak()
#linebreak()
#image("../Images/Olliter_Logo.png")
#text("OL-SD20A", size: 20pt)
#linebreak()
#linebreak()
#text("SDR Transceiver", size: 20pt)
#linebreak()
#linebreak()
#text("User Manual", size: 15pt, style: "italic")
#linebreak()
#linebreak()
#image("./Images/OL-SD20A_Front.jpeg")
#pagebreak()

// Content of the document
#par(justify: true)[

]