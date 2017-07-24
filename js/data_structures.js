// RELEASE 0
var colors = ['seafoam', 'blue chip', 'beige', 'indigo'];
var horses = ['Ed', 'Maddon', 'Baedz', 'Rizzo'];

colors.push('lime');
horses.push('Kyle');

//RELEASE 1

var coloredHorses = {}; // new hash

for (var i = 0; i < horses.length; i++) { // loop index to 0, until length of horses, add 1 to index
  coloredHorses[horses[i]] = colors[i]; //new hash key is horse and value color of same index
}

console.log(coloredHorses) // print hash

//RELEASE 2

function car(color, type, seats) {
  this.carColor = color;
  this.carType = type;
  this.carSeats = seats;
}

var car1 = new car("blue", "sedan", 4);
var car2 = new car("white", "suv", 4);

console.log("Melissa's car is a " + car1.carColor + " " + car1.carType + " with " + car1.carSeats + " seats!");
console.log("Charlie's car is a " + car2.carColor + " " + car2.carType + " with " + car2.carSeats + " seats!");