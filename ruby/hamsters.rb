puts "What is the hamsters name?"
name = gets.chomp

puts "How loud is the hamster, from 1-10?"
volume = gets.chomp

volume = volume.to_i

puts "What color is the fur?"
color = gets.chomp

puts "Is your hamster a good candidate for adoption?"
candidate = gets.chomp
  if candidate = yes 
    puts "that's awesome!"
  else 
    puts "sorry, but no thank you."
  end

puts "How old is the hamster?"
age = gets.chomp
age = age.to_i
  if age = " "
    age == nil
  end


puts "Hello, how loud is #{name}? His loudness level is #{volume}. His fur is #{color}, and how beautiful! The hamster is #{age} years old!"