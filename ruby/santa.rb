# please ignore everything below the dash lines.
# I'm redo-ing the assignment for more practice!

# you can make an instance variable anywhere not just in init

class Santa
  # attr_accessor :gender
  attr_reader :age, :ethnicity, :gender

  def initialize
    # p "Initializing Santa instance ..."
    @gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"].sample
    @ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"].sample
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(0..140)
  end

  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    p "That was a good #{cookie}" 
  end

  def celebrate_birthday(age)
    @age = age + 1
  end

  def get_mad_at(name)
    if @reindeer_ranking.include?(name)
      @reindeer_ranking.insert(-1, @reindeer_ranking.delete(name))
    end
  end

# # setter methods for attributes to make writable
#   def gender=(new_gender)
#     @gender = new_gender
#   end

# # getter methods for attributes to make readable
#   def age
#     @age
#   end

#   def ethnicity
#     @ethnicity
#   end

end


# should print out the attributes of each Santa using the
# instance methods that give you access to that data.
10.times.collect do |santa|
   random = Santa.new
   puts "This santa is #{random.gender} and #{random.ethnicity}"
   p "This santa is #{random.age} years old"
end



# santas = []
# santas << Santa.new("N/A", "N/A")
# santas << Santa.new("agender", "Latino")
# santas << Santa.new("male", "Asian")
# santas << Santa.new("bigender", "black")
# santas << Santa.new("female", "unicorn")
# p santas

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

# winnie = Santa.new("female", "unknown")
# winnie.get_mad_at("Vixen")
# p winnie

# p winnie.gender = "N/A"
# p winnie.ethnicity
# p winnie.celebrate_birthday(23)



































# ------------------------------------------------------
# class Santa
#   attr_reader :age
#   attr_accessor :gender, :ethnicity

# def initialize(genders, ethnicities)
#   p "Initializing Santa instance ..."
#   @gender =  ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"].sample
#   @ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"].sample
#   @reindeer_ranking =  ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
#   @age = rand(0..140)
# end

# def celebrate_birthday(year)
#   birthday = year + 1
#   p birthday
# end

# def get_mad_at(reindeer_name)
# new_rankings = @reindeer_ranking.index(reindeer_name)
# @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(new_rankings))
# end

# def speak
#   p "Ho, ho, ho! Haaaappy holidays!"
# end

# def eat_milk_and_cookies(cookie)
#   p "That was a good #{cookie}!"
#   # cookie
# end

# # def gender=(new_gender)
# #   @gender = new_gender
# # end 

# # def age
# #   @age
# # end 

# # def ethnicity
# #   @ethnicity
# # end

# end


# # santas = []
# # santas << Santa.new("orange", "unicorn")
# # santas << Santa.new("female", "Vietnamese")
# # santas << Santa.new("bigender", "sexy")
# # santas << Santa.new("N/A", "N/A")

# # flappy = Santa.new("orange", "mystic")
# # flappy.speak
# # flappy.eat_milk_and_cookies("chocolate chip")
# # p "Flappy's age is: #{flappy.age} and ethnicity is #{flappy.ethnicity}."
# # p flappy.gender=("awesome")

# 8.times.collect {
# random_santas = Santa.new(@gender, @ethnicity)
# }



# # 8.times.collect {
# # santas = []
# # example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# # example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# # random_santas = Santa.new(example_genders.sample, example_ethnicities.sample)
# # }


