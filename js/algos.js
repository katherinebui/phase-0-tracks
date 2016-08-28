// Release 0 : Find the Longest Phrase
// Given array, should be able to pull out the longest string
// Iterate through the array
// Use .length to find the longest string
//    - Need to call .length on all elements
//    - Pull out the longest out of all
//    - Takes one initial number and compares until it finds largest
// Start at 0:
//    - If the length is greater than 0, then replace it with that word


// declare var outside loop because you don't want to keep recreating var
function longest(array){
  var measure = 0; 
  var longestPhrase;
  index = 0;
  while(index < array.length){
    index += 1;
    for(var i = 0; i < array.length; i++){
      if(measure < array[i].length){
        measure = array[i].length;
        longestPhrase = array[i];
      }
    }
  }
  // console.log(longestPhrase);
  return longestPhrase;
}


var dogNames = ["Mogley", "Speedo", "Chance", "William Wilfred", "Pippy"];
console.log(longest(dogNames));
// returns "William Wilfred"

var colors = ["red", "blue", "black", "gold", "hot pink"];
console.log(longest(colors));
// returns "hot pink"

var animals = ["dinosaur", "dog", "lion", "monkey"];
console.log(longest(animals));
// returns "dinosaur"



// Release 1 : Find a Key-Value Match
// Write a function that takes two objects and checks to see 
//    if the objects share at least one key-value pair
// If match = return true
// If NO match = return false


function match(obj1, obj2){
  for(var i = 0; i < Object.keys(obj1).length; i++){
    for(var j = 0; j < Object.keys(obj2).length; j++){
      if(Object.keys(obj1)[i] == Object.keys(obj2)[j]){
        if(obj1[Object.keys(obj1)[i]] == obj2[Object.keys(obj2)[j]]){
          return true;
        }
      }
    }
  }
  return false;
// return false at the end because if the first condition is false, will return false and break
// by returning at the end - it'll compare every element before returning false
// .values is not support by browers, so have to access values through keys
}


var pets = {
  "dog" : 7,
  "pigs" : 3,
  "zebras" : 0,
  "horses": 2,
  "whale" : 0,
  "dinosaur" : 0
}; 

var wildAnimals = {
  "zebras" : 8,
  "dogs" : 7,
  "dinosaur" : 0,
  "horses" : 2,
  "hamsters": 0
};

console.log(match(pets, wildAnimals));
// console.log(pets[Object.keys(pets)[0]]);


// Release 2 : Random Test Data
// Random function that takes in a length and populates an array with random words of that length
// Have to generate random number
// While loop?
// For loop?
// WHAT LOOP?!

function random(length){
  var array = [];
  var index = 0;
  var alphabet = ['a', 'b', 'd', 'e', 'f', 'g', 'h', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
  while(index < length){
    index += 1;
    var finalString = "";
    // set final string inside loop because it needs to reset every time it adds a letter
    for(var i = 0; i < Math.floor((Math.random() * 10) + 1); i++){
      var letter = alphabet[Math.floor((Math.random() * 26) + 1)];
      finalString += letter;
    }
  array.push(finalString);
  }
  console.log(array);
  return array;
}

console.log(random(3));


// 10 x Generate an array
// Feed array to longest function
// Print results
for(i = 0; i < 10; i++){
longest(random(7));
  }










