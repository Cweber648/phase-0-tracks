// Find the Longest Phrase
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
