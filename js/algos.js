// Find the Longest Phrase
// input: list of words
// steps:
//  assign the first word to longest word
//  until the end of the list,
//  compare the length of the longest word to the length of next word
//  assign the longer word to longest word 
function longest(words) {
  var longest = words[0]; 
  for (var i = 1; i < words.length; i++) {
    if (longest.length < words[i].length) {
      longest = words[i];
    }
  }
  return longest;
}

// DRIVER CODE
//console.log(longest(["long phrase","longest phrase","longer phrase"]));

// Find a Key-Value Match
// input: two key-value pair
// steps:
//  get all the keys for first key-value pair
//  check if second key-value pair has any key in the first one
//  if there is a matching key, check if the they have same value
// output: true or false
function keyValueMatch(a, b) {
  var keysA = Object.keys(a);
  var keysB = Object.keys(b);
  var key;
  for (var i = 0; i < keysB.length; i++) {
    key = keysB[i];
    if (a[key] == b[key]) {
      return true;
    }
  }
  return false; 
}

// DRIVER CODE
//console.log(keyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54})); // true
//console.log(keyValueMatch({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3})); // true 

// Generate Random Test Data
// input: integer
// steps:
//  generate a random string that has a length between 1 to 10
//  repeat as many times as the input.
// output: list of strings
function randomWords(number) {
  var words = [];
  var randomWord, randomLength, randomCharCode;
  for (var i = 0; i < number; i++) {
    randomLength = Math.ceil(Math.random() * 10);
    randomWord = "";
    for (var j = 0; j < randomLength; j++) {
      randomCharCode = Math.ceil(Math.random() * 26) + 64;
      randomWord += String.fromCharCode(randomCharCode);
    }
    words.push(randomWord);
  }
  return words;
}

// DRIVER CODE
var words = [];
var randomNumber;
for (var i = 0; i < 10; i++) {
  randomNumber = Math.ceil(Math.random() * 5) + 2;
  words = randomWords(randomNumber);
  console.log("Generated Array: \n"  + words);
  console.log("Longest Word: \n" + longest(words)); 
  console.log("--------------------------");
}
