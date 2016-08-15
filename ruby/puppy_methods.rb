class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(integer)
    integer.times do |i|
    puts "Woof!"
  end
  end
  
  def roll_over
    puts "*rolls over*"
  end

  def dog_years(integer)
  dog_age = integer * 7
  puts "The dog is #{dog_age} years old!"
  end

  def growls
    puts "Grrrrr!"
  end

end

Mogley = Puppy.new
Mogley.fetch("ball")
Mogley.speak(3)
Mogley.roll_over
Mogley.dog_years(2)
Mogley.growls
