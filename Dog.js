function Dog(name) {
    this.name = name;
    this.stomach = [];
}

Dog.prototype.eatCat = function(cat) {
    this.stomach.push(cat);
}

Dog.prototype.eatMouse = function(mouse) {
    this.stomach.push(mouse);
}

module.exports = Dog;