#initialize hash
client_information = {}

#prompt user input 
#turn strings into symbols 
#add symbols as keys to hash
p "What is the client's name?"
name = gets.chomp
client_information[:name] = name
 

p "What is the client's age?"
age = gets.chomp
client_information[:age] = age

p "How many children does the client have?"
children = gets.chomp
client_information[:children] = children

p "What is the prefered decor theme?"
theme = gets.chomp
client_information[:theme] = theme


p "The proposal is done: True or False?"
proposal = gets.chomp
client_information[:proposal] = proposal

p "How many rooms does the place have?"
rooms = gets.chomp
client_information[:rooms] = rooms

p "The client has an idea of what he/she wants: True or False?"
want = gets.chomp
client_information[:want] = want

#print hash to screen to see results
p  client_information  

#prompt to see whether user wants to change any information
p "Do you want to change any information? Type 'none' if nothing needs to be changed."
changed_key = gets.chomp # gets the key
changed_key = changed_key.to_sym # changes the string into a variable
  if changed_key == "none" # if no, just move on
  end

p "Enter new information"
changed_value = gets.chomp # get the updated information
update_client_information = {} # store new information in new hash
update_client_information[changed_key] = changed_value 

# merge the two and update
client_information.update(update_client_information)

# print the new information
p client_information


# need to figure out way to access key to update value
# when vaule is changechange string to symbol? or vice versa and then insert into key







