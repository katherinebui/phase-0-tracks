// Release 0 : Find the Longest Phrase
// Given array, should be able to pull out the longest string
// Iterate through the array
// Use .length to find the longest string
//    - Need to call .length on all elements
//    - Pull out the longest out of all
//    - Takes one initial number and compares until it finds largest

var longest = function(array){
  // had to .length -1 because need to include last of the array
  for(var i = 0; i = array.length - 1; i++){ 
    var big = array[0]
    if (big.length < array[i].length){
      big = array[i]
      return big
    }
  }
};

var fruit = ["Kiwi", "Banana", "Orange", "Coconut"];
console.log(longest(fruit));

var dogNames = ["Mogley", "Speedo", "Chance", "Pippy", "William Wilfred"];
console.log(longest(dogNames));


// Release 1 : 