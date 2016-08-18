class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

def initialize(genders, ethnicities)
  p "Initializing Santa instance ..."
  @gender = genders
  @ethnicity = ethnicities
  @reindeer_ranking =  ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  @age = 0
end

def celebrate_birthday(year)
  birthday = year + 1
  p birthday
end

def get_mad_at(reindeer_name)
new_rankings = @reindeer_ranking.index(reindeer_name)
@reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(new_rankings))
end

def speak
  p "Ho, ho, ho! Haaaappy holidays!"
end

def eat_milk_and_cookies(cookie)
  p "That was a good #{cookie}!"
  # cookie
end

# def gender=(new_gender)
#   @gender = new_gender
# end 

# def age
#   @age
# end 

# def ethnicity
#   @ethnicity
# end

end


# santas = []
# santas << Santa.new("orange", "unicorn")
# santas << Santa.new("female", "Vietnamese")
# santas << Santa.new("bigender", "sexy")
# santas << Santa.new("N/A", "N/A")

# flappy = Santa.new("orange", "mystic")
# flappy.speak
# flappy.eat_milk_and_cookies("chocolate chip")
# p "Flappy's age is: #{flappy.age} and ethnicity is #{flappy.ethnicity}."
# p flappy.gender=("awesome")



santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end




