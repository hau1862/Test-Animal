function Cat(name) {
    this.name = name;
    this.stomach = [];
}

Cat.prototype.eat = function(mouse) {
    this.stomach.push(mouse);
    return this;
}

module.exports = Cat;