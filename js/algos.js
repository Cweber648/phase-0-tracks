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


var cities = ['Bend', 'Eugene', 'Portland', 'Ashland'];
var lgth = 0;
var longest;

var person1 = new person("Bend", "California");
var person2 = new person("Bend", "Oregon");

console.log(person1);
console.log(person2);
console.log(compare_cities(person1,person2));
console.log(longest_word(cities));

