var Cat = require("./Cat.js");
var Mouse = require("./Mouse.js");

let Tom = new Cat("Tom");
let Jerry = new Mouse("Jerry");

Tom.eatMouse(Jerry);

console.log(Tom);