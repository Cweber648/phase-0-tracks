var colors = ["blue", "red", "yellow", "green"];
var names = ["ed", "bob", "suzy", "jane"];
colors.push("pink");
names.push("joe");

var horses = {};
for (var i = 0; i < names.length; i++) {
	horses[names[i]] = colors[i];
}
//console.log(horses);

function Car (brand, color) {
  console.log("Our new Car", this);
  this.brand = brand;
  this.color = color;
  this.honk = function () {
    console.log("HONK!!!");
  }
  console.log("CAR INIALIZATION COMPLETE!");
}
/*
console.log ("Let's build a car")
var lexus = new Car ("Lexus", "Red");
console.log(lexus.brand);
console.log(lexus.color);
lexus.honk();
console.log("----");

console.log ("Let's build a car")
var mercedes = new Car ("Mercedes", "Black");
console.log(mercedes.brand);
console.log(mercedes.color);
mercedes.honk();
console.log("----");
*/

var carBrands = ["Maybach", "Bentley", "Rolce Royce", "Pagani Zonda", "Bugatti"];

var cars = {};
for (var i = 0; i < carBrands.length; i++) {
	console.log("Let's Build a New Car!");
	cars[carBrands[i]] = new Car(carBrands[i], colors[i]);
	console.log(cars[carBrands[i]].brand);
	console.log(cars[carBrands[i]].color);
	cars[carBrands[i]].honk();
	console.log("----");
}
