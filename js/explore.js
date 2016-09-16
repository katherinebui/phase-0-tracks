// GOAL: takes in a string and produces the reverse of the string

// The function should take in a string as a parameter
// Time to loop! 
//   - declare an empty string to store new information in?
//   - find the length of the string and store it so we can iterate
//   - index positons start at 0
//   - i is made >= 0 because iterating through a string
//     (need to make >= 0 because the other indexes are higher in number)
//     (> because it needs to print out the last 0)
//   - string.length - 1 because need to include the last letter
//     (the last letter in hello world is d, length is 11, d is 10, -1 will include d by index)
//   - need to move backwards on index positions (i--)
// Print the result to the screen


var reverse = function(string){ // set function to variable to call
  for(var i = string.length - 1; i >= 0; i--){ // set a for loop to move backwards
  var backward = ""; // set empty variable to store result in
  backward += string[i] // add each letter into new variable backwards
  console.log(backward); // print it
}
};

firstAttempt = reverse("hello world"); // driver code to see if it works

if (1==1){ // setting conditional
  console.log(firstAttempt)
} else {
  console.log("Goodbye!")
}