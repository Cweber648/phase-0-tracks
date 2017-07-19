# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Gives us access to another file and that information. is a relative path. While require needs an absolute path. Look relative.
#
require_relative 'state_data'
attr_accessor :population , :population_density
class VirusPredictor
#Intializes- assigns values to instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  private
#This is running two instance methods to get the virus effects.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end



#Dialing down scope to inside the class. Some data does not need to be made public. Ruby makes everything public unless specified otherwise.


#Gives the number of deaths based on the population density of that state.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if self.population_density >= 200
      number_of_deaths = (self.population * 0.4).floor
    elsif self.population_density >= 150
      number_of_deaths = (self.population * 0.3).floor
    elsif self.population_density >= 100
      number_of_deaths = (self.population * 0.2).floor
    elsif self.population_density >= 50
      number_of_deaths = (self.population * 0.1).floor
    else
      number_of_deaths = (self.population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#How fast the virus will spread based on the state and its population density.

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if self.population_density >= 200
      speed += 0.5
    elsif self.population_density >= 150
      speed += 1
    elsif self.population_density >= 100
      speed += 1.5
    elsif self.population_density >= 50
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


STATE_DATA.each do |state,population_info|
  current_state = VirusPredictor.new(state,population_info[:population_density], population_info[:population])
  current_state.virus_effects
end

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section
#the differences between the two hash syntaxes are it uses a hash rocket and the other uses a class. One is a :class one is hash =>

## EXPLANATION OF require_relative
# Gives us access to another file and that information. is a relative path. While require needs an absolute path. Look relative.
#The variables were repeating themselves. We did not need to call them. We just had to use virus-effects to call the two codes written in the virus effects.