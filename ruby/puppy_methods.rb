# please ignore everything below dashed line, we are re-do to practice classes

class Puppy

  def initialize
    p "Initializing new puppy instance..."
  end

  def speak(integer)
    integer.times do 
      p "Woof!"
    end
  end

  def roll_over
    p " *rolls over*"
  end

  def dog_years(integer)
    dog_age = integer * 7
    p dog_age
  end

  def poop
    p "Let me out, human!"
  end

end

winston = Puppy.new
winston.speak(2)
winston.dog_years(3)
winston.poop


# When mispelling initialize, that method does not run
# but the other methods run
# when other methods depend on initialize and it's spelled wrong...
# then everything breaks and we get errors



class Pizza

  attr_reader :order
  attr_accessor :size

  def initialize(size)
    @size = size
    @order = {}
  end

  def add_topping(topping, quantity)
    @order[topping] = quantity
  end

  def remove_topping(topping)
    @order.delete(topping)
  end

  def update_topping(quantity)
    @order[topping] = quantity
  end

  def price
    # every pair in hash = $5
  end

  def print 
    @order.each do |topping, quantity|
      p "You ordered a #{size} pizza with #{quantity} #{topping}."
    end
  end

  def deliver_to(location)
    "Delivering #{@order.print} to #{location}!"
  end

end


# if we had a user interface, would note the price of toppings


































# ----------------------------------------------------------------------------
# class Puppy
#   def initialize 
#     puts "Initializing new puppy instance ..."
#   end
    
#   end

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end
  
#   def speak(integer)
#     integer.times do |i|
#     puts "Woof!"
#   end
#   end
  
#   def roll_over
#     puts "*rolls over*"
#   end

#   def dog_years(integer)
#   dog_age = integer * 7
#   puts "The dog is #{dog_age} years old!"
#   end

#   def growls
#     puts "Grrrrr!"
#   end

# end


# Mogley = Puppy.new
# Mogley.fetch("ball")
# Mogley.speak(3)
# Mogley.roll_over
# Mogley.dog_years(2)
# Mogley.growls




# class Baby

#   def initialize
#     puts "Initializing new baby instance ..."
#   end

#   def cry
#     puts "WAHHHHHHH!"
#   end

#   def coo(integer)
#     integer.times do |i|
#     puts "coooooo!"
#   end
#   end

# end

# Charles = Baby.new
# Charles.cry
# Charles.coo(4)



# # baby_list = 50.times.collect{Baby.new}
# # def baby_cry(list)
# #     list.each do
# #     p "hello"
# #     end
# # end
    
# # baby_cry(baby_list)

# # baby_list.map!(&:cry)


# baby_list = []
# 50.times do |baby|
#   baby_list << Baby.new
# end
# #p baby_list
# baby_list.each do |baby|
#   baby.cry
#   baby.coo(2)
# end




