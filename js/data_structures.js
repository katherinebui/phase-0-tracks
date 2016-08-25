var colors = ["blue", "purple", "green", "white"];
var names = ["Russell", "The Hulk", "Chappy", "Ace"];

colors.push("red");
names.push("Waffle");

var horses = {};
for(var i = 0; i < names.length; i++){
// iterating thru names and colors
  horses[names[i]] = colors[i];  
}
console.log(horses)
// () = where the condition goes
// {} = where the code goes
// i = i + 1, i++, i+=1 = the same thing


// properities: 
// brand, number of seats, color
// function of the car: rev engine 

// var car = {
//   brand: 'Tesla', 
//   'number of seats': 3, 
//   color: 'black', 
//     revEngine: function() { 
//       console.log("VROOM VROOM!");
//     }
// };


function Car(brand, numOfSeats, color) {
  console.log("Our new car:", this);

  this.brand = brand;
  this.numOfSeats = numOfSeats;
  this.color = color;
  

  this.revEngine = function() { console.log("VROOM VROOM!"); };
  
  console.log("CAR ASSEMBLY COMPLETE!");
}

var firstCar = new Car("Tesla", 2, "black");
console.log(firstCar);
firstCar.revEngine();

var secondCar = new Car("BMW", 4, "red");
console.log(secondCar);
secondCar.revEngine();

var thirdCar = new Car("Audi", 2, "white");
console.log(thirdCar);
thirdCar.revEngine();




