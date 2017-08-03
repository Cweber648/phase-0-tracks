console.log("The script is working!")

// var photo = document.getElementById("image");
// photo.style.border = "2px solid red";

function addBorder (event) {
  console.log("This worked")
  console.log(event)
  event.target.style.border = "14px solid red";

}

var photo = document.getElementById("image");
photo.addEventListener("click", addBorder);

