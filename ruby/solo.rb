class Sandwiches
  # need to be able to access (write/read) the amount of sandwich, type of meat, and bread
  attr_accessor :quantity, :meat, :name, :bread

# at least three attributes (using at least two data types) whose values will vary from instance to instance (example: age)
  def initialize(names)
    @quantity = quantity
    @meat = ["salami", "roast beef", "chicken", "turkey", 'eggplant']
    @name = name
    @bread = bread
  end

# at least three methods, at least one of which takes an argument
 # toast will just say it's getting toasted 
  def meaty
    @meat.each do |m|
      if m == "salami"
      puts "I love #{m} too!" 
      end
  end
end

# gets the number of how man peices it should be cut into
  def cut(integer)
    puts "Your sandwich is cut in #{integer} pieces!"
  end

# eating is nomnomnom
  def eat(string)
    if string == "yes"
      puts "nomNomnomNomn!"
    else string == "no"
      puts "ewwwwwww!"
    end
  end

end

# sammy = Sandwiches.new(1, "roast beef", "sourdough")
# sammy.meaty
# sammy.cut(2)
# sammy.eat("no")

# USER INPUT PROMPTS

sandwich = []

# looop through program
loop do 

# gets name to know which sandwich belongs to who
p "Hello! What is your name?"
name = gets.chomp!
p "Hey there, #{name}! Lets build a sandwich!"

#intialize 
foodie = Sandwiches.new(name)
sandwich << foodie 

# get number of sandwiches
p "How many sandwiches do you want?"
how_many = gets.chomp
foodie.quantity = how_many

# choosing meats
p "Please select your choice of meat: salami, roast beef, chicken, turkey, eggplant"
choice_meat = gets.chomp
foodie.meat = choice_meat

# choosing bread
p "What is your choice of bread?"
choice_bread = gets.chomp
foodie.bread = choice_bread

#print out statement with idea of what they are getting
p "Hey, #{name}! You want #{foodie.quantity} sandwiches with: #{foodie.meat} and #{foodie.bread}"

# ask if they want changes
p "If you are satisfied, please type 'done', if not please indiciate what you want to change (quantity, meat, bread)."
  changes = gets.chomp
  
# ask if want to change quantity, ask what is wanted and make the change
if changes == "quantity"
  p "How many of these sandwich do you want?"
  foodie.quantity = changes
  p "Hey, #{name}! You want #{foodie.quantity} sandwiches with: #{foodie.meat} and #{foodie.bread}"

# ask if want to change meat, ask what is wanted and make the change
elsif changes == "meat"
  p "What type of meat do you want to change that to?"
  new_meat = gets.chomp
  p "Hey, #{name}! You want #{foodie.quantity} sandwiches with: #{new_meat} and #{foodie.bread}"

# ask if want to change bread, ask what is wanted and make the change  
elsif changes == "bread"
  p "What type of bread would you like to change that to?"
  new_bread = gets.chomp
   p "Hey, #{name}! You want #{foodie.quantity} sandwiches with: #{foodie.meat} and #{new_bread}"
  
# if done, the say goodbye!
else changes == "done"
  p "Hey, #{name}! You want #{foodie.quantity} sandwiches with: #{foodie.meat} and #{foodie.bread}"
  p "Thank you! Happy eating!"
end
end





