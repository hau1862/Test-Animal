function Human(name, age) {
    this.name = name;
    this.age = age;
    this.hasCat = false;
    
    this.getCat = function() {
        this.hasCat = true;
    }
}

module.exports = Human;