# please ignore everything below the line. I am re-doing the assignment for practice!

# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#     words.upcase + "!" + " :D"    
#   end
# end


# Shout.yell_happily("hello")
# Shout.yell_angrily("f u")


module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words.upcase + "!" + " :D"    
  end
end

class Human
  include Shout
end

class Dog
  include Shout
end

human = Human.new
p human.yell_angrily("wtf man")
p human.yell_happily("i love you")


dog = Dog.new
p dog.yell_angrily("GRRRRRRRRRRRR! *bites*")
p dog.yell_happily("bark bark bark, *licks*")

































# ----------------------------------------------------------
# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
# end


# module Shout
#   def scream(words)
#     puts "#{words}! WHAT DO YOU WANT FROM ME?!"
#   end
# end

# class Human
#   include Shout
# end

# class Kitten
#   include Shout
# end

# man = Human.new
# p "HEY MAN!"
# man.scream("AHHHHHHHHHHHH!!!!!!")

# karl = Kitten.new
# p "HEY KARL!"
# karl.scream("Grrrrrrr")


