var headline = document.getElementById( "headline" );
headline.style.backgroundColor = "lightblue";
 
var subheads = document.getElementsByClassName("subhead");
for (var i = 0; i < subheads.length; i++) {
  var element = subheads[i];
  element.style.fontWeight = "bold";
  element.style.fontStyle = "italic";
}

headline.onclick = function() {
  console.log('clicked');
};
