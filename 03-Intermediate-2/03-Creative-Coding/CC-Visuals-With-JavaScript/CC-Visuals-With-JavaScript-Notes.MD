
Bruno Imbrizi
- Creative Coding: Making Visuals with JavaScript - https://www.domestika.org/en/courses/2729-creative-coding-making-visuals-with-javascript

-----

"Combine Design & Technical"

HTML Canvas + JavaScript

---

People who Inspired:
- Yugo Nakamura - yugop.com (flash, gone)
- Justin Windle - Sketch.js (Early HTML Canvas)
- Eiji Muroichi - Playpit (Minimal style 3D)
- Memo Akten - Forms (one of many projects)
- Ryoji Ikeda - (minimal and complex style)
- Matt DesLauriers - Sketching with Code (also makes a tool)
- Anders Hoff / Inconvergent - Systems Behaviors using geometry

Ideas worth stealing
- hosting random expiraments online
- using video inputs to generate animation of abstract forms

---

use VSCode or Sublime Text

--- JavaScript ---

Simple Example of Canvas Element Tag in HTLM
<canvas width="600" height="600"></canvas>

Variables - a reference to a value
let x = 5;
let year = 2012
let nextYear = year + 1;
let dinner = 'pasta'; - singe quote, or double?
let sentence = 'Tonight, dinner will be ' + dinner;

Functions - a block of code that performs a task, actions. When you call a function you are running a chunk of code
function doSomething(param) {
    console.log(param);
}
doSomething('hey There')

use the console in the browser to send logs
console.log('hello');

if you want a function to return a value you need to use the word return
function add(a, b) {
    return a + b;
}

let result = add(5, 7);
console.log(result)

-- another way to write functions without the word function, arrow function, it's more common
let multiply = (a, b) => {
    return a * b;
}
console.log(multiply(5, 7)); -- call it directly without an intermediary storage variable


--- actually using canvas ---
have to call it with a variable first

let canvas = document.querySelector('canvas'); -- an expression, document refers to this document, uses querySelector to select an element, named 'canvas'
let context = canvas.getContext('2d'); -- the context is where we actually do the drawing

context.fillRect(100, 100, 400, 400); -- takes 4 parameters, x, y, width, height
-- coordinates on a 2D space, 0,0 is top left corner
-- in this example (100, 100, 400, 400) it moves 100 to the right, 100 down, then starts to draw as much as the other two values

context.fillStyle = 'blue'; -- not a function, a property, a variable that is stored in the object

- fillrect is actually doing three things, creating a shape, drawing a rectangle, and filling it with color, 


-- drawing an outline
context.lineWidth = 4;
context.beginPath();
context.rect(100, 100, 400, 400);
context.stroke();

- documentation - https://www.w3schools.com/tags/ref_canvas.asp


-- drawing a circle
context.beginPath();
context.arc(300, 300, 100, 0, Math.PI * 2);
context.stroke();

-- note to self, Math.PI - the capitalization of PI matters, both letters, else you wonder why the cirlce isn't drawing

-- how is it keeping the strokes seperated? since they aren't grouped under a function or being explicitly called?


--- Arrays ---
- arrays are lists

let years = [2040, 2041, 2042];
let menu = ['starter', ]


--- Loops
- loops are chunks of code that run again and again for a limited number of times
- expression to control the loop is made of 3 parts
	- the index variable, usually i = 0
	- the duration of the loop
	- what to do to i on every iteration of the loop

for (let i = 0; i < 4; i += 1) {
	console.log(menu[i]);
}


-- better to make it dynamic
for (let i = 0; i < menu.length; i += 1) {
	console.log(menu[i]);
}


-- write to array
for (let i = 0; i < 10; i += 1) {
	years.push(2040 + i)
}
console.log(years);


-- using loops to draw
- this draws 5 squares next to each other
for (let i = 0; i < 5; i++) {
	context.beginPath();
	context.rect(100 + 60 * i, 100, 60, 60);
	context.stroke();
}
- now with gaps
for (let i = 0; i < 5; i++) {
	context.beginPath();
	context.rect(100 + 80 * i, 100, 60, 60);
	context.stroke();
}
- clearning it up with variables
for (let i = 0; i < 5; i++) {
	let width = 60;
	let height = 60;
	let x = 100;
	let y = 100;

	context.beginPath();
	context.rect(x, y, width, height);
	context.stroke();
}

-- note to self, variable order matters in javascript, can't call one that is listed later

- more modular
for (let i = 0; i < 5; i++) {
	let width = 40;
	let height = 60;
	let gap = 20;
	let x = 100 + (width + gap) * i;
	let y = 100;

	context.beginPath();
	context.rect(x, y, width, height);
	context.stroke();
}

- nested loops, this one runs 25 times, makes a grid of squares
for (let i = 0; i < 5; i++) {
	for (let j = 0; j < 5; j++) {
	let width = 40;
	let height = 60;
	let gap = 20;
	let x = 100 + (width + gap) * i;
	let y = 100 + (height + gap) * j;

	context.beginPath();
	context.rect(x, y, width, height);
	context.stroke();
	}
}


-- conditionals - if some condition do something, elxe do something else.

if (conditional) {
	// do something
}
else {
	// do something else
}

-- Random Numbers
Math.random();
- makes a decimal number between 0-1


-- Constants
- use const unless we know the value will change, then use let
const gravity = 9.81;
let velocity = 0.0;

-- other loops
- forEach iterates through an array
menu.forEach(item => {
	console.log(item);
});


----- Environment for Sketching -----
- Terminal
- Node.js
- NPM
- Canvas-Sketch
	- made by Matt DesLauriers @mattdesl on github
	- https://github.com/mattdesl/canvas-sketch
	- npm install canvas-sketch-cli -g
	- which installs it globally
	- docs at https://github.com/mattdesl/canvas-sketch/blob/master/docs/README.md

make a new sketch - named sketch
	- canvas-sketch sketch.js --new

once installed it laodes it to something like
 - Server running at http://192.168.1.11:9966/ 
 - it will live update what is put into the js file

 to run it again
 - canvas-sketch sketch.js

 or when creating it add --open and it will open it in browser
 - canvas-sketch sketch.js --new --open

new files (nodes) are created inside a node_modules folder and other files like package-lock.json and package.json keep track of what nodes were installed
- read the comments in hello.js to understand the parts of the file

saving snapshots - it uses an = not a - to set the folder
- canvas-sketch sketch.js --output=output/01
- then with browser selected to ctrl+s or cmd+s if on unix based
- may be good to change some setting to optimize for printing, higher pixel density etc
const settings = {
	dimensions: 'A4',
	pixelPerInch: 300,
	orientation: 'landscape'
};
- or for instagram
const settings = {
  dimensions: [ 1080, 1080 ]
};


--- Rotations

translate function - it's like the difference between moving the pen or moving the paper, by using translate you move the shape instead of the canvas

context.save and context.restore - makes the rotation object independant instead of all of them

most blocks of code in future will look like this, startign with save, ending with restore
    context.save();
    context.translate(x, y);
    context.rotate(0.3);

    context.beginPath();
    context.rect(-w * 0.5, -h * 0.5, w, h);
    context.fill();
    context.restore();

--- Angles

radians vs degrees
- context.rotate - actually uses radians

to convert degrees to radians divide by 180 * Math.PI
- context.rotate(45 / 180 * Math.PI)

a function to use it
const degToRad = (degrees) => {
  return degrees / 180 * Math.PI;
};


--- Libraries & Utility Functions ---

somthing introduced
- scale() takes x,y

look up canvas-sketch-util
https://github.com/mattdesl/canvas-sketch-util

small example functions made - replaced with canvas-sketch-util
const degToRad = (degrees) => {
  return degrees / 180 * Math.PI;
};

const randomRange = (min, max) => {
  return Math.random() * (max - min) + min;
};

use includes like
const math = require('canvas-sketch-util/math');
const random = require('canvas-sketch-util/random');

--- Arcs ---

