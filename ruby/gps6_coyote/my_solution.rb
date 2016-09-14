# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative allows you to get information from a related file in the same directory
# it differs from require because the file has to be in the same directory

require_relative 'state_data'

class VirusPredictor
  # the initialize method is going to run when a new instance of the class is created and it sets default instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # calls the predicted_deaths and speed_of_spread methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # predicts deaths based on population density and population of a state
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

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # calculates how fast the virus will spread based on the state's population density
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



STATE_DATA.each do |state, information|
  all_states = VirusPredictor.new(state, information[:population_density], information[:population])
  all_states.virus_effects
end



#=======================================================================
# Reflection Section


=begin
  
1. What are the differences between the two different hash syntaxes shown in the state_data file?
  one set of keys are strings and the other are symbols
  learned today that two strings, when inspect will be located in different places
  whereas symbols are better for memeory because it's tied to one location
2. What does require_relative do? How is it different from require?
  require_relative allows you to get information from a related file in the same directory
  it differs from require because the file has to be in the same directory
3. What are some ways to iterate through a hash?
  .each, .each_key, .each_value
4. When refactoring virus_effects, what stood out to you about the variables, if anything?
  the other two methods don't need parameters, if you do add parameters, 
  remember to include them consistently throughout the program
  the parameters that were being passed where already defaulted in the beginning,
  there was no need to type them again
5. What concept did you most solidify in this challenge?
  the different ways to iterate through a hash and how to access it's information,
  especially in a hashy hash, there are ways to refactor to make code easier and cleaner to read
  AWESOME SESSIONS
  
=end











