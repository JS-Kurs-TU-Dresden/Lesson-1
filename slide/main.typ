#import "./theme.typ": *

// --- Colors ---
#let jsYellow = rgb("f7df1e")
#let jsBlack = rgb("#222")
#let jsWhite = rgb("#ffffff")
#let subdued = jsWhite.darken(40%)


#set page(
    fill: jsBlack,
)

#set text(
    font: "Montserrat",
    fill: jsWhite,
)

#show link: it => [
    #text(underline(it), fill: jsYellow)
]

#show: slides.with(
    author: "Nils Twelker",
    title: "Introcution to JavaScript",
    short-title: " JavaScript Lesson 1",
    date: "March 2023",
    color: jsYellow,
)

#show raw: it => [
    #box(it, fill: jsBlack.lighten(10%), outset: (x: 4pt, y:6pt), radius: 5pt)
]

#let hint = (it, full: false) => [
    #if full [
        #block([#text("tipp", fill: jsBlack)], fill: jsYellow.lighten(10%), outset: (x: 8pt, y:8pt), radius: (top:5pt))
        #v(-14pt)
        #block(it, fill: jsBlack.lighten(10%), outset: (x: 8pt, y:8pt), radius: (bottom: 5pt, top-right: 5pt))
    ] else [
        #text([Tipp: ], fill: jsYellow.lighten(10%))
        #it
    ]
]

== Overview
- 12 Sessions
- every Wednesday 3. DS, 11:10 - 12:40
- Room: APB/E065

== Verbal Language?

Is there someone that only speaks English fluently?

== Questions after the lesson?
- GitHub
- Discord?
- Matrix?

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
- Do you have a goal you want to achieve with this course?

== What is JavaScript?

- Created by Brendan Eich in 1995
- Used in web browsers
- Used in Node.js

#hint("JavaScript is not related to Java")

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
- GitHub Account #text([ for sharing your code ], fill: subdued)

== Running your first JavaScript code

- Create A folder
- Open VS Code
- Click on `File > Open Folder`
- Select the folder you created
- Create a new file called `index.js`
- Write #raw("console.log(\"Hello World\")", lang: "js") and save
- Open a terminal in VS Code
- Run `node index.js`

== Variables

```js
let myAge = 16
const myName = "Ben"
```

- Store Data
- `let` #text([ can be changed ], fill: subdued)
- `const` #text([ can not be changed ], fill: subdued)

== Data Types

```js
let myAge = 16
let myName = "Ben"
let isAdult = true
```

- `number` #text([ for numbers ], fill: subdued)
- `string` #text([ for text ], fill: subdued)
- `boolean` #text([ for true or false ], fill: subdued)

== Converting Data Types

```js
const a = String(16)    // a = "16"
const b = Number("16")  // b = 16
const c = Boolean(16)   // c = true
const d = Boolean(0)    // d = false
const e = Boolean(1)    // e = true
```

#hint([\
    `String()` #text([ converts to a string ], fill: subdued)\
    `Number()` #text([ converts to a number ], fill: subdued)\
    `Boolean()` #text([ converts to a boolean ], fill: subdued)
])

== Special Data Types

```js
let yourAge = null
let yourName
```

- `null` #text([ for empty values ], fill: subdued)
- `undefined` #text([ for variables that are not yet defined ], fill: subdued)

==



#columns(2, [
    === Basic Operators
    ```js
let a = 9
let b = 4

let sum = a + b        // 13
let difference = a - b // 5
let product = a * b    // 36
let quotient = a / b   // 2.25
let remainder = a % b  // 1
```
    #colbreak()
    === Modify in place
    ```js
let a = 9
let b = 4

a += b // a = 13
a -= b // a = 5
a *= b // a = 36
a /= b // a = 2.25
a %= b // a = 1
    ```
])

#hint("Remainder is the rest of a division") 

== Increment and Decrement

#columns(2, [
    ```js
let a = 9
let b = 4
let c

a++
console.log(a) // 10
c = b--
console.log(b) // 3
console.log(c) // 4
    ```
#colbreak()
    #hint([
        `++` and `--` can be written before or after the variable.
        \
        \
        The difference is that the variable is changed before or after the value is used.

        ```js
c = --b
        ```
        would have set c to 3 aswell.
    ])
])

== Comments

#columns(2, [
    ```js
// This is a single line comment

/*
This is a
multi line
comment
*/
```
#colbreak()
#hint("Comments can help explain the code and ignored by the computer")
])

// == Get user input

// ```js
// import * as readline from "node:readline"
// import { stdin as input, stdout as output } from 'node:process';

// const rl = readline.createInterface({ input, output });
// let name = rl.question("What is your name? ")

// console.log("Hello " + name)
// rl.close()
// ```

== Git

#columns(2, [
    - Version Control
    - Share your code
    - Collaborate with others

    #box([#rect([#image("./git.png", width: 24pt)], fill: jsWhite, radius: 30pt)], baseline: 8pt) Use the Source Control section in VS Code to commit and push your changes.

    #colbreak()

    #hint([
        `Commit` is a bundle of changes like "added a new button to the page"
    ])

    #hint([
        `Push` is the process of sending your commits to a remote repository like GitHub
    ])
])

Platforms:#link("https://github.com")[`GitHub`] or #link("https://gitlab.com")[`GitLab`] to share your code with others.

== GitHub Classrooms

- Assignments for you to complete
- Submit your solutions
- Get feedback
- Track your progress

== GitHub Classrooms

After you have setup your GitHub account, you can join the classroom using the following link: \ 
#link("https://classroom.github.com/a/NDTDeLoR", "https://classroom.github.com/a/NDTDeLoR")

- Allow Classrooms to access your GitHub account
- Select your Name from the list
- Accept the assignment
- Refresh the page
- click on `Open in VS Code`

== Assignments

- 1 assignment each lesson
- **easy**, **medium** and **hard** tasks
- More points for harder tasks
- Goal are 100 Points per lesson

== Assignment Structure

- `/slide` - slides for the lesson
- `/tasks` - tasks to complete
- `/tests` - tests for the tasks

Each task will have a test associated with it. Try to pass the tests in order to complete the task. \
Run `npm i` to install the dependencies. \
Run `npm run test [name]` where `[name]` is the name of the task.
The test will tell you if you passed or failed.

== Helpful Links
This course is inspired by #link("https://javascript.info/", "JavaScript.info") so big thanks to them for their great content!

- #link("https://developer.mozilla.org/en-US/docs/Web/JavaScript", "MDN Web Docs")
- #link("https://www.w3schools.com/js/", "W3Schools")

#hint([Or just google it! #emoji.face.wink])

== After finishing a task

- #box([#rect([#image("./git.png", width: 24pt)], fill: jsWhite, radius: 30pt)], baseline: 8pt) Open the Source Control section in VS Code
- Write a commit message
- Commit your changes
- Push your changes

#hint("The name of the commit could be the name of the task")
