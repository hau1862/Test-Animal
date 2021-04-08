function Dog(name) {
    this.name = name;
}

Dog.prototype.eat = function() {
    console.log("eating");
}

module.exports = Dog;