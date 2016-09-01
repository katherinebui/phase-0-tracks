# please ignore the code after the line, I'm redo-ing the assignment for more practice!

# need: client's name, age, number of children, 
# decor theme, dogs (boolean), favorite color(string), ideal # of rooms

#
loop do 
  p "Enter a name:"
  name = gets.chomp
  client_information[:name] = name

  p "Enter an age:"
  age = gets.chomp
  client_information[:age] = age

  p "How many children do you have?"
  numOfChild = gets.chomp
  client_information[:numOfChild] = numOfChild

  p "What is your decoration theme?"
  decorTheme = gets.chomp
  client_information[:decorTheme] = decorTheme

  p "How many dogs do you have?"
  dogs = gets.chomp
  client_information[:dogs] = dogs

  p "What is your favorite color?"
  color = gets.chomp
  client_information[:color] = color

  p "How many rooms would you like?"
  rooms = gets.chomp
  client_information[:rooms] = rooms

  p "Here are all of the client's information:"
    client_information.each do |key, value|
    p "#{key}: #{value}"
  end

  p "Is there anything you would like to change? Please enter the key or type 'exit'"
  changeKey = gets.chomp
  break if changeKey == "exit"
  changeKey = changeKey.to_sym
  p "Please enter the value you would like to change"
  changeValue = gets.chomp
  break if changeKey == "exit"
  client_information[changeKey] = changeValue

  p "Here is your updated information:"
    client_information.each do |key, value|
    p "#{key}: #{value}"
  end
end


















# ---------------------------------------------------------

# class Client

#     attr_accessor :name, :age, :numOfChild, :decorTheme, :dogs, :color, :rooms, :client_information

#   def initialize(name, age, numOfChild, decorTheme, dogs, color, rooms)
#     @name = name
#     @age = age
#     @numOfChild = numOfChild
#     @decorTheme = decorTheme
#     @dogs = dogs
#     @color = color
#     @rooms = rooms
#     @client_information = {}
#   end

#   # def add_to_hash(name, age, numOfChild, decorTheme, dogs, color, rooms)
#   #   client_information[:name] = @name
#   #   client_information[:age] = @age
#   #   client_information[:numOfChild] = @number
#   #   client_information[:decorTheme] = @decorTheme
#   #   client_information[:dogs] = @dogs
#   #   client_information[:color] = @color
#   #   client_information[:rooms] = @rooms
#   #   p client_information
#   # end

#   def print
#     p "Here are all of the client's information:"
#     @client_information.each do |key, value|
#       p "#{key}: #{value}"
#     end
#   end

# end


# person1 = Client.new("Charles", 28, 1, "ocean", 2, "blue", 3)
# person1.add_to_hash("Charles", 28, 1, "ocean", 2, "blue", 3)
# person1.print



# -----------------------------------------------------------

# #initialize hash
# client_information = {}

# #prompt user input 
# #turn strings into symbols 
# #add symbols as keys to hash
# p "What is the client's name?"
# name = gets.chomp
# client_information[:name] = name
 

# p "What is the client's age?"
# age = gets.chomp
# client_information[:age] = age

# p "How many children does the client have?"
# children = gets.chomp
# client_information[:children] = children

# p "What is the prefered decor theme?"
# theme = gets.chomp
# client_information[:theme] = theme


# p "The proposal is done: True or False?"
# proposal = gets.chomp
# client_information[:proposal] = proposal

# p "How many rooms does the place have?"
# rooms = gets.chomp
# client_information[:rooms] = rooms

# p "The client has an idea of what he/she wants: True or False?"
# want = gets.chomp
# client_information[:want] = want

# #print hash to screen to see results
# p  client_information  

# #prompt to see whether user wants to change any information
# p "Do you want to change any information? Type 'none' if nothing needs to be changed."
# changed_key = gets.chomp # gets the key
# changed_key = changed_key.to_sym # changes the string into a variable
#   if changed_key == "none" # if no, just move on
#   end

# p "Enter new information"
# changed_value = gets.chomp # get the updated information
# update_client_information = {} # store new information in new hash
# update_client_information[changed_key] = changed_value 

# # merge the two and update
# client_information.update(update_client_information)

# # print the new information
# p client_information








