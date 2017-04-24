# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# The relative statement links the 2 ruby files together allowing the main
# file to use the information (hashes, arrays) provided in the sub file.
# It is different from require in that "require_relative" uses the immediate
# relative files and "require" searched for more core libraries. 
require_relative 'state_data.rb'

class VirusPredictor

# Everytime a new instance is created, given "state", "population", 
# and "density" is given.

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calling 2 methods that demonstrate the effects of the virus.
  # Takes the same arguements and will return correlating data. 
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private


# Depending on population density, the number of deaths is calculated by
# population * given algorithm
# Then prints predicted amount of deaths.
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


  #Calculates how fast the virus spreads based on population density.
  def speed_of_spread  #in months
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


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each {|state, hash| VirusPredictor.new(state, hash[:population_density], hash[:population]).virus_effects}

#=======================================================================
# Reflection Section

# 1.
# The difference between the hash syntaxes is that the colon allows
# a more clear definition of the key and the element. Because in this instance
# we are assigning a element within a hash to another hash as a key. Seperating
# the annotations like this makes it easier to read.

# 2.
# The relative statement links the 2 ruby files together allowing the main
# file to use the information (hashes, arrays) provided in the sub file.
# It is different from require in that "require_relative" uses the immediate
# relative files and "require" searched for more core libraries. 

# 3.
# Two different methods to iterate through hashes are .each and .each_key.
# They require different arguements and so are used differently.

# 4.
# I noticed because that they are instance variables, although
# they are all represented by @(variable) they are all given different
# values based on what element is given from the hash. 




