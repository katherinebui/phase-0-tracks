// GOAL: takes in a string and produces the reverse of the string

// The function should take in a string as a parameter
// Time to loop! 
//   - find the length of the string and store it so we can iterate
//   - index positons start at 0
//   - i is made >= 0 because iterating through a string
//     (need to make >= 0 because the other indexes are higher in number)
//     (> because it needs to print out the last 0)
//   - need to move backwards on index positions (i--)
// Print the result to the screen


var reverse = function(string){
  for(var i = string.length; i >= 0; i--){
  var backward = "";
  backward += string[i]
  console.log(backward);
}
};

firstAttempt = reverse("hello world!");

if (1==1){
  console.log(firstAttempt)
} else {
  console.log("Goodbye!")
}

