
// function for finding longest word in an array of words.
//Function should take a word in the array as an argument
// Loop through the array.
// our input is going to be a word_array
// our output is going to the be the longst word in the array
// find that by looping, and looking for the word with the longest index in the array.

// Function for checking to see if to items have one thing in common. return true if at least one thing in common.
// Function takes two arguments to compare.
// going back on the pairing assignment, this. will be used to create two new people to compare.
// create another function to compare the two people
// we want to see if person 1 (object) = person2 object
// input will be both peoples cities or state
// output will be true or false pending if they have one thing in common
// steps. If else statement for both parameters set.

// function takes integer for length, returns random array of string that is the length of the integer.
// function takes arument for length
// need to create variables. and an blank array
// math keyword is what is used to generate random numbers.
// input is going to be the length of the word (or number)
// output is going to be the the array but with the amount of strings = to the number

// Function to generate the random length of strings.
// put in all valid characters.
// we want to put in the text of the random numbers into the array. Until we == whatever number we generate.
// print to console.


function longest_word(word_arrays){
  var lgth = word_arrays[0].length;

  for (var i = 0; i < word_arrays.length; i++){
    if (word_arrays[i].length > lgth){
      lgth = word_arrays[i].length;
      longest = word_arrays[i];
    }
  }
  return longest;
}

function person(city, state){
  this.favcity = city;
  this.favState = state;
}

function compare_cities(person1,person2){
  if (person1.favCity == person2.favCity)
    {
      return true;
    }
  if (person1.favState == person2.faveState)
    {
      return true;
    }
  else
    {
      return false;
    }
}

function create_random(length){
  var random_number = 0;
  var random_words = [];

  for (var i = 0; i < length; i++)
  {
    random_number = Math.floor(Math.random() * 10);
    random_words.push(makeid(random_number));
  }
  console.log(random_words)
  return random_words;
}

function makeid(random_length) {
  var text = "";
  var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

  for (var i = 0; i <= random_length; i++)
    text += possible.charAt(Math.floor(Math.random() * possible.length));

  return text;
}


var cities = ['Bend', 'Eugene', 'Portland', 'Ashland'];
var lgth = 0;
var longest;

var person1 = new person("Bend", "California");
var person2 = new person("Bend", "Oregon");



console.log(person1);
console.log(person2);
console.log(compare_cities(person1,person2));
console.log(longest_word(cities));
console.log(longest_word(create_random(10)));

