/* Reverse function
 * input: string
 * steps:
 *  split the string into letters
 *  reverse the letters
 *  concatenate the letters into string
 * output:
 *  reversed string
 *
 * OR
 *
 * input: string
 * steps:
 *  create a container for reversed string
 *  For each letters from the last to the first
 *    concatenate the letter to the reversed string container
 * output:
 *  reversed string
 */

/* Using Built-in Functions
 * function reverse(string) {
 *   return string.split("").reverse().join("");
 * }
 */

// Reverse Function
function reverse(string) {
  var reverseString = "";
  for (var i = string.length - 1; i >= 0; i--) {
    reverseString += string[i]; 
  }
  return reverseString;
}

// DRIVER CODE
var word = reverse("word") == "drow";
console.log(word);
var javaScript = reverse("JavaScript") == "tpircSavaJ";
console.log(javaScript);
