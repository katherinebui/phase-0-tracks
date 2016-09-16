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
function longest(array){ // declare function
  var measure = 0;  // use a measure variable to update the longest phrase during loop
  var longestPhrase; // created var to store the longest phrase in
  index = 0; // index for while loop
  while(index < array.length){ // start of while loop to iterate thru full length of array
    index += 1; // remember to increment or else will go on forever 
    for(var i = 0; i < array.length; i++){ // for loop to iterate thru the each phrase 
      if(measure < array[i].length){ // if phrase length is more than 0
        measure = array[i].length; // then use that length as the new measure to find longest phrase
        longestPhrase = array[i]; // the longest phrase is equal to phrase belong to measure
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


function match(obj1, obj2){ // declare function to take in 2 parameters
  for(var i = 0; i < Object.keys(obj1).length; i++){ // for loop to iterate thru the first obj
    for(var j = 0; j < Object.keys(obj2).length; j++){ // for loop to iteratre thru the second obj
      if(Object.keys(obj1)[i] == Object.keys(obj2)[j]){ // conditional IF match is found in KEYS
        if(obj1[Object.keys(obj1)[i]] == obj2[Object.keys(obj2)[j]]){ // IF there is a KEY MATCH, then iterate thru values
          return true;
        }
      }
    }
  }
  return false;
// return false at the end because if the first condition is false, will return false and break
// by returning at the end - it'll compare every element before returning false
// .values is not support by browers, so have to access values through keys
//  since .values does not work, had to access the values thru keys 
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
// console.log(Object.keys(pets)[0]); 
//   gets the first key
// console.log(pets[Object.keys(pets)[0]]);
//    testing get values thru keys


// Release 2 : Random Test Data
// Random function that takes in a length and populates an array with random words of that length
// Have to generate random number
// While loop?
// For loop?
// WHAT LOOP?!

function random(length){ // function
  var array = []; // empty array to store words
  var index = 0; // index for while loop to iterate
  var alphabet = ['a', 'b', 'd', 'e', 'f', 'g', 'h', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']; // set alpha
  while(index < length){ // while loop to iterate to set how many times to iterate, want length of array to equal the int being passed in
    index += 1;  // increment by 1 for no infinite loops
    var finalString = ""; // empty string to store words 
    // set final string inside loop because it needs to reset every time it adds a letter
    for(var i = 0; i < Math.floor((Math.random() * 10) + 1); i++){ // for loop to generate random # for length of word, no more than 10 letters 
      var letter = alphabet[Math.floor((Math.random() * 26) + 1)]; // generate random letter from the alpha, add 1 to include the last letter
      finalString += letter; // store new letters in the string
    }
  array.push(finalString); // push the string into new array
  }
  console.log(array);
  return array;
}

console.log(random(3)); // print out array of 3 random phrases


// 10 x Generate an array
// Feed array to longest function
// Print results
for(i = 0; i < 10; i++){ // print 10 arrays
longest(random(7)); // with 7 in each array
  }










