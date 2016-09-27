console.log("The script is running!");

function changeFontFamily(event){
  event.target.style.fontFamily = "arial";
}

function addColorBorder(event){
  event.target.style.border = "4px solid orange";
}

var font = document.getElementById("origins");
font.addEventListener("click", changeFontFamily);

var photo = document.getElementById("pineapple-photo");
photo.addEventListener("click", addColorBorder);


// changeFontFamily();
// addColorBorder();
