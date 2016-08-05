not_vampire = "Probably not a vampire"
probably_vampire = "Probably a vampire"
almost_certain_vampire = "Almost certainly a vampire"
def_vampire = "Definitely a vampire"

puts "How many employees will be processed?"
employees = gets.chomp
employees = employees.to_i

total_employees = 0
while total_employees < employees

puts "What is your name?"
name = gets.chomp
puts "Hey #{name}!"

puts "How only are you?"
age = gets.chomp
age = age.to_i
puts "So you're #{age}? That's awesome!"

puts "What year were you born?"
year = gets.chomp
year = year.to_i

if age == 2016 - year 
  puts "You were born in #{year}? Just testing how fast you can think! :)"
else puts "Something is fishy!"
end


puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic_bread = gets.chomp
  if garlic_bread == "yes"
    puts "Awesome! It's delicious!"
  elsif garlic_bread == "no"
    puts "Why? Is there something you're not telling us?"
  else 
    puts "Please provide an answer for us. Thank you."
  end

puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp
  if insurance == "yes"
    puts "So you're not immortal!"
  elsif insurance == "no"
    puts "Why not? You're not a vampire... are you?"
  else
    puts "Please provide an answer for us. Thank you."
  end

puts "Name all your allegeries one at a time and type 'done' when you are finished."
allegeries = gets.chomp
until allegeries == "sunshine" || allegeries == "done"
    puts "Keep going!"
    allegeries = gets.chomp
  if allegeries == "sunshine"
    results = probably_vampire
    break
  end
end


if age == 2016 - year && (garlic_bread == "yes" || insurance == "yes")
   results = not_vampire
   puts "You're probably not a vampire."
elsif age != 2016 - year && (garlic_bread == "no" && insurance == "no")
  results =  probably_vampire
  puts "You are probably a vampire."
elsif age != 2016 - year && garlic_bread == "no" && insurance == "no"
  results = almost_certain_vampire
  puts "Oh dear, you are ALMOST CERTAINLY a vampire!"
elsif name == "Drake Cula" || "Tu Fang"
  results = def_vampire
  puts "Who are you trying to kid? YOU ARE TOTALLY A VAMPIRE!"
else puts "Results inconclusive"
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

end
  
