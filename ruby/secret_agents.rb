# encrypt
def encrypt(word)
index = 0
while index < word.length
  if word[index] != " "
    word[index] = word[index].next
  index += 1
  else word[index] == "z"
    word[index] == "a"
  end
end
return word
end

encrypt("dog")
# need to take care of edge case

#decrypt

def decrypt(word)
index = 0
reverse_alphabet = "abcdefghijklmnopqrstuvwxyza".reverse
while index < word.length
  if word[index] != " "
    new_word = reverse_alphabet.index(word[index])
    new_word += 1
    word[index] = reverse_alphabet[new_word]
    index += 1
  end
end

return word

end