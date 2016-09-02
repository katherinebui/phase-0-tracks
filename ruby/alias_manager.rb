# please ignore everything below the dotted line, i'm redoing this for extra practice!


def swap(name)
# split with spaces
  string = name.split(' ')
# swapping content in index 0 and 1
  string[0], string[1] = string[1], string[0]
# join
  new_string = string.join(" ")
end




















































# -------------------------------------------------------------

# def spy_name(string)
# # array of vowels ad consonants
#   vowels = ['a','e','i','o','u','a', 'A', 'E', 'I', 'O', 'U', 'A']
#   consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z', 'b', 'B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M','N','P','Q', 'R', 'S', 'T', 'V', 'W', 'X', 'Y', 'Z', 'B']
  
# # setting loops to find string index in vowel and consonants
#   result = ""
#   index = 0 
#   while index < string.length
#     if string == " "
#       return " "
# # if string does not carry a vowel and consonant, return space    
#     elsif !vowels.include?(string[index]) && !consonants.include?(string[index])
#     result.concat(" ") 
# # if the string does include a vowel, use the next vowel in the array
#   elsif vowels.include?(string[index])
#     next_vowel = vowels[vowels.index(string[index]) + 1] 
# # place the new letter in the result
#     result << next_vowel
# # if the sting does include a consonant, use the next letter in the array
#   else consonants.include?(string[index])
#   next_cons = consonants[consonants.index(string[index]) + 1]
# # place the new letter in the result
#     result << next_cons
#   end
# # no infinite loops pelase
#   index += 1 
# end
#   return result 
# end



# # other way of doing it 
# # if string == " "     - if empty string, return same thing
# #   return " "
# #   elsif string == string[/[aeiou]/i]     - scans through the vowels to see match of vowels
# #   v_fake_name = vowels.index(string)     - find the the index of the match of string to vowel array
# #   vowel_next = vowels[v_fake_name + 1]   - take that index position and move up one
# #   return vowel_next
# #   else 
# #   c_fake_name = consonants.index(string)      - do the same thing for consonants
# #   conso_next = consonants[c_fake_name + 1]
# #   return conso_next
# #   end
# # end



# # goal: to switch the first name with the last name
# def swap(name)
# # split with spaces
#   string = name.split(' ')
# # swapping content in index 0 and 1
#   string[0], string[1] = string[1], string[0]
# # join
#   new_string = string.join(" ")
# # empty variable
#   fake_name = ""
# # Passes each character in str to the given block
#   new_string.each_char do |letter|
# # place into variable 
#   fake_name << spy_name(letter)
#  end
# end

# # setting an empty hash
# all_names = {}

# # asks user for their name and prompts to get an answer
# puts "What is your name?"
# agent_name = gets.chomp
# # places real name and spy name in the hash
# all_names[agent_name] = spy_name(swap(agent_name))
# p spy_name(swap(agent_name))

# # prompts user to enter name until they type quit
# # could've been an until loop
# if agent_name == "quit"
#   p "Good-bye!"
# else puts "Type another name"
#   agent_name = gets.chomp
#   all_names[agent_name] = spy_name(swap(agent_name))
# end 

# # prints out the results of real name and spy name
# p "This is top secret data! No one must see this but you:" 
# p all_names










# # def conso_vowels(string)
# # vowels = ['a','e','i','o','u','a', 'A', 'E', 'I', 'O', 'U', 'A']
# # consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z', 'b', 'B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M','N','P','Q', 'R', 'S', 'T', 'V', 'W', 'X', 'Y', 'Z', 'B']

# # if string == " "
# #   return " "
# #   elsif string == string[/[aeiou]/i]
# #   v_fake_name = vowels.index(string)
# #   vowel_next = vowels[v_fake_name + 1]
# #   return vowel_next
# #   else 
# #   c_fake_name = consonants.index(string)
# #   conso_next = consonants[c_fake_name + 1]
# #   return conso_next
# #   end
# # end

# # def spy_name_splitter(agent_name)
# #   string = agent_name.split(' ')
# #   string.reverse!
# #   new_string = string.join('')
# #   spy_alias = ""
# #   new_string.each_char do |idx|
# #   spy_alias << conso_vowels(idx)
# # end
# # return spy_alias
# # end 
 
# # puts "What is your name?"
# # agent_name = gets.chomp

# # until agent_name == "quit"
# #   agent_alias = spy_name_splitter(agent_name)
# #   p agent_alias 
# #   puts "Type another name"
# #   agent_name = gets.chomp
# # end 

