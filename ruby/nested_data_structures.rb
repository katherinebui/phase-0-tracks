# please ignore the code after the line, I'm redo-ing the assignment for more practice!



runway = {
  Shauna: {
    shirt: "pink",
    pants: "black"
    }, 

  Norma: {
    shirt: "pink",
    pants: "black" 
    }, 

  Tom: ["shirtless"],

  Maheen: ["red stripe", "blue stripe", "white stripe"],

  Dino: {
    dress: "white",
    shoes: "blue",
    pants: nil
    }, 

  Ana: {
    hat: "polka dots",
    shoes: "purple",
    skirt: "black",
    shirt: "cropped top"
    }, 

  Jenny: "nothing",

  Bryan: ["yellow shirt", "one shoe", "ugly hat"]

}


p runway[:Dino].key("blue").equal? :shoes # => true
p runway[:Maheen].push("black stripe") # => ["red stripe", "blue stripe", "white stripe", "black stripe"]
p runway[:Jenny].empty? # => false
p runway[:Bryan].delete("one shoe")
  p runway[:Bryan] # => ["yellow shirt", "ugly hat"]
p runway[:Dino].keys # => [:dress, :shoes, :pants]
p runway[:Tom].push("pantless") # => ["shirtless", "pantless"]
p runway[:Norma].fetch(:pants) # => "black"
p runway[:Ana].has_value?("purple") # => true
p runway.length # => 8
p runway[:Ana].select! { |clothes, detail| clothes == :hat} # => {:hat=>"polka dots"}







































# --------------------------------------------- 
# A classroom full of desks full of supplies 

# build a hash for classroom
# classroom = {
#   # each desk belongs to someone different
#   # name = key
  
#   Shauna: [
#     "pins", 
#     "sticky notes"
#     ],
    
#   Norma: {
#     pen: "black",
#     paper: "college ruled",
#     pencil: 7
#   },
  
#   Deborah: [
#     "pencils", 
#     "staples"
#     ],
    
#   Maheen: [
#     "scissors", 
#     "sticky notes", 
#     "paper clips"
#     ],
    
#   Amisha: {
#     folder: "red",
#     highlighter: "yellow"
#   },
  
#   Joia: "tape"
# }

# classroom[:Maheen][1] = "erasers"
# classroom[:Norma].store(:stapler, 20)
# classroom[:Deborah].push("highlighter")

# p classroom

# classroom.key(7).equal? :pencil
# classroom[:Shauna].length