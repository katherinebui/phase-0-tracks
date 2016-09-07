# please ignore everything below the line. I am re-doing the assignment for practice!

module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words.upcase + "!" + " :D"    
  end
end


Shout.yell_happily("hello")
Shout.yell_angrily("f u")






































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


