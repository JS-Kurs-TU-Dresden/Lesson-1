#import "./theme.typ": *

// --- Colors ---
#let jsYellow = rgb("f7df1e")
#let jsBlack = rgb("#222")
#let jsWhite = rgb("#ffffff")
#let subdued = jsWhite.darken(50%)


#set page(
    fill: jsBlack,
)

#set text(
    font: "Montserrat",
    fill: jsWhite,
)

#show: slides.with(
    author: "Nils Twelker",
    title: "Introcution to JavaScript",
    short-title: "Introcution to JavaScript",
    date: "March 2023",
    color: jsYellow,
)

#show raw: it => [
    #box(it, fill: jsBlack.lighten(10%), outset: (x: 2pt, y:6pt), radius: 5pt),
]

== Overview

- 12 Sessions
- every Wednesday, 13:00 - 14:30
- Room: APB/00X

== Questions after the lesson?
- Matrix: ...
- GitHub

== Verbal Language?

Is there someone that only speaks English fluently?

== Goals

- Learn the basics of JavaScript
- Learn to manipulate the Browser
- Complete a small project of your choice

== Who am I?

- Nils Twelker
- mail\@nitwel.de
- Hobbys: Cycling, Programming, Gaming
- Favorite Game: Minecraft
- I also contribute a lot to Open Source Software

== Who are you?

- Name?
- Hobbys?
- Favorite Game?
- Do you know JavaScript?
- Prior experience with programming?

== What can you build with JavaScript?
- An interactive website
- A game
- An app of mobile devices
- A desktop app

And much more!

== Getting started

You need the following

- VS Code #text([ for writing code ], fill: subdued)
- Node.js #text([ for running JavaScript outside a browser ], fill: subdued)
- Git #text([ for Version Control ], fill: subdued)

== Running your first JavaScript code

- Open VS Code
- Create a new file
- Write #raw("console.log(\"Hello World\")", lang: "js")
- Save the file as `index.js`
- Open a terminal
- Run `node index.js`