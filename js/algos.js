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
console.log(longest(["long phrase","longest phrase","longer phrase"]));

// Find a Key-Value Match
// input: two key-value pair
// steps:
//  get all the keys for first key-value pair
//  check if second key-value pair has any key in the first one
//  if there is a matching key, check if the they have same value
// output: true or false
