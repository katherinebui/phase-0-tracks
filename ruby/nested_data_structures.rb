# please ignore the code after the line, I'm redo-ing the assignment for more practice!













































# --------------------------------------------- 
# A classroom full of desks full of supplies 

# build a hash for classroom
classroom = {
  # each desk belongs to someone different
  # name = key
  
  Shauna: [
    "pins", 
    "sticky notes"
    ],
    
  Norma: {
    pen: "black",
    paper: "college ruled",
    pencil: 7
  },
  
  Deborah: [
    "pencils", 
    "staples"
    ],
    
  Maheen: [
    "scissors", 
    "sticky notes", 
    "paper clips"
    ],
    
  Amisha: {
    folder: "red",
    highlighter: "yellow"
  },
  
  Joia: "tape"
}

classroom[:Maheen][1] = "erasers"
classroom[:Norma].store(:stapler, 20)
classroom[:Deborah].push("highlighter")

p classroom

classroom.key(7).equal? :pencil
classroom[:Shauna].length