# Virus Predictor

# I worked on this challenge [by myself, with: Jesus Zambrano].
# We spent 1 hours on this challenge.

# EXPLANATION OF require_relative
# load file relative to the file, self made files 
# require = loaded in ruby 

require_relative 'state_data'

class VirusPredictor

# creates instances to make it accessible - instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# a way to run both methods at once
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
# private v. public
# private = can only be called from inside the class
# used private when you don't things to be changed
# organizing - helper methods, signal for only calling things in the class


# conditional statments that determines the number of deaths in each state
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
  # other ways: could move prints/puts statements
  # could call number_of_deaths.floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end


# conditional statements that determine the speed of deaths 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
  # could use case statements
    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


STATE_DATA.each do |state, info|
   new_state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
   new_state.virus_effects
   # new_state.speed_of_spread
end




#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
#   one set of keys are strings and the other are symbols
# What does require_relative do? How is it different from require?
#  load file relative to the file, self made files - whereas require = loaded in ruby 
# What are some ways to iterate through a hash?
#  .each, .each_key, .each_value
# When refactoring virus_effects, what stood out to you about the variables, if anything?
#  the other two methods don't need parameters, if you do add parameters, remember to include them consistently throughout the program
# What concept did you most solidify in this challenge?
#  how to iterate over a hashy hash


