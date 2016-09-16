// please ignore everything below the line, I am redo-ing the assignment for practice!
// pairinng with: Sherianne Bolling


var colors = ["purple", "pink", "blue", "green"];
var names = ["Ombre", "Winston", "Charles", "Tina"];
 
colors.push("white");
names.push("Edward");

// console.log(colors);
// console.log(names);

var horses = {};

function colorfulHorses(names, colors, horses){
  for(var i = 0; i < names.length; i++){
    horses[names[i]] = colors[i];
  };
console.log(horses);
} 

// console.log(colorfulHorses(names, colors, horses));

function Car(brand, color, breaksWork){
  this.brand = brand;
  this.color = color;
  this.breaksWork = breaksWork;

  this.locksCar = function(){ 
    console.log("*locks the car*");
     }; 
}

var car = new Car("Tesla", "black", true);
var anotherCar = new Car("Ford", "white", false);
var yetAnotherCar = new Car("BMW", "green", true);
// console.log(car);
// console.log(anotherCar);
// console.log(yetAnotherCar);
// anotherCar.locksCar();


// Research on our own: 
// If you wanted to loop through the keys and values of an object, how would you do that? 
//  use a for loop (similar to while loop) 


for(var info in car){
   console.log(info + " = " + car[info]);
};


console.log(Object.keys(car)); 
// console.log(Object.values(car)); // values not supported 




// http://jshint.com/























// ----------------------------------------------
// var colors = ["blue", "purple", "green", "white"];
// var names = ["Russell", "The Hulk", "Chappy", "Ace"];

// colors.push("red");
// names.push("Waffle");

// var horses = {};
// for(var i = 0; i < names.length; i++){
// // iterating thru names and colors
//   horses[names[i]] = colors[i];  
// }
// console.log(horses)
// // () = where the condition goes
// // {} = where the code goes
// // i = i + 1, i++, i+=1 = the same thing


// // properities: 
// // brand, number of seats, color
// // function of the car: rev engine 

// // var car = {
// //   brand: 'Tesla', 
// //   'number of seats': 3, 
// //   color: 'black', 
// //     revEngine: function() { 
// //       console.log("VROOM VROOM!");
// //     }
// // };


// function Car(brand, numOfSeats, color) {
//   console.log("Our new car:", this);

//   this.brand = brand;
//   this.numOfSeats = numOfSeats;
//   this.color = color;
  

//   this.revEngine = function() { console.log("VROOM VROOM!"); };
  
//   console.log("CAR ASSEMBLY COMPLETE!");
// }

// var firstCar = new Car("Tesla", 2, "black");
// console.log(firstCar);
// firstCar.revEngine();

// var secondCar = new Car("BMW", 4, "red");
// console.log(secondCar);
// secondCar.revEngine();

// var thirdCar = new Car("Audi", 2, "white");
// console.log(thirdCar);
// thirdCar.revEngine();




