function Horse(name) {
    this.name = name;
    this.stomach = [];
}

Horse.prototype.eatCat = function(grass) {
    this.stomach.push(grass);
}

module.exports = Horse;