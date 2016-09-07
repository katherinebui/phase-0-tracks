# please ignore everything below the line. I am re-doing the assignment for practice!
module Shout
  # we'll put some methods here soon, but this code is fine for now!
end











































# ----------------------------------------------------------
# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
# end


module Shout
  def scream(words)
    puts "#{words}! WHAT DO YOU WANT FROM ME?!"
  end
end

class Human
  include Shout
end

class Kitten
  include Shout
end

man = Human.new
p "HEY MAN!"
man.scream("AHHHHHHHHHHHH!!!!!!")

karl = Kitten.new
p "HEY KARL!"
karl.scream("Grrrrrrr")


