# Asks a secret agent (the user) whether they would like to decrypt or encrypt a password
puts "Hello, would you like to decrypt or encrypt a password?"
d_or_e = gets.chomp

# Asks them for the password
puts "Please type in a password."
password = gets.chomp

# Conducts the requested operation, prints the result to the screen, and exits

# encrypt
def encrypt(word)
index = 0
while index < word.length
  if word[index] != " "
  # takes care of empty space
    word[index] = word[index].next
  # asks for the next index position of letter in word
  index += 1
  # on to the next letter in word
  else word[index] == "z"
    word[index] == "a"
    # in the case of z - remember to move forward with the letter a
  end
end

return word

end

# need to take care of edge case

# our first attempt:
# def decrypt(word)
# index = 0
# reverse_alphabet = "abcdefghijklmnopqrstuvwxyza".reverse
# while index < word.length
#   if word[index] != " "
#     # takes care of blank spaces
#     new_word = reverse_alphabet.index(word[index])
#     # find letters in word in alphabet
#     new_word += 1
#     # takes the next index position
#     word[index] = reverse_alphabet[new_word]
#     # finding the position 
#     index += 1
#     # on to the next letter
#   end
# end

# return word

# end



# we tried to find other solutions:

def decrypt2(word)
alpha = "abcdefghijklmnopqrstuvwxyz"

index = 0 

while index < word.length 
  word2 = alpha.index(word[index])
 # matches the letters in the entered word to alpha to get index position
  word2 -= 1 
# moves the position backwards
  word[index] = alpha[word2]
# find the letter of the new position and get the letter from the alpha
# get new letter from alpha[word2] = output
  index += 1 
# jumps to the next letter of the entered word
  end
  return word
end

# decrypt2(encrypt("swordfish"))

# this nested method works because our encrypt method move
# all the index positions of the letter forward one letter and then
# decrypt2 method moved the index positions back one (aka their original positions)

# if the answer id decrypt = run the decrypt code on the password then display the password outcome
if d_or_e == "decrypt"
  password = decrypt2(password)
  puts password
# if the answer id decrypt = run the encrypt code on the password then display the password outcome
else d_or_e = "encrypt"
  password == encrypt(password)
  puts password
end


