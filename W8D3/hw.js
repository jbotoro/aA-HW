function titleize(names, callback) {
    let titleized = names.map(name => `Mx. ${name} Jingleheimer Schmidt`);
    callback(titleized);
};

titleize(["Mary", "Brian", "Leo"], (names) => {
    names.forEach(name => console.log(name));
});

function Elephant(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}

Elephant.prototype.trumpet = function () {
    console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
};