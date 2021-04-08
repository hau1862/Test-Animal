function Mouse(name) {
    this.name = name;
    this.isAlive = true;
}

Mouse.prototype.die = function() {
    this.isAlive = false;
    return this;
}

module.exports = Mouse;