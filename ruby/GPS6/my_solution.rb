#
require_relative 'state_data'
# Require Relative reads the files from the related folder with the file name.

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # Creates Initial attributes of state of origin, population density and population. 

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  #calls private predicted deaths method  and speed of spread on atrributes listed

  private

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
  # Takes atrributes listed above and determines the number of deaths by rounding the number to nearest float by given value based on population density.

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
  # takes state name and pop density and calculates rate that virus will spread based on population density and prints string. 

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state,population_hash|
  individual_state = VirusPredictor.new(state,population_hash[:population_density],population_hash[:population])
  individual_state.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#========================================================================
# reflect 

# One is key as string and another is key as symbol 
# key as symbol are more immutable to changes and save memory and easier compairing (key just use id)
# http://stackoverflow.com/questions/8189416/why-use-symbols-as-hash-keys-in-ruby

# require_relative is looking for the file name relative to the file itself.
# require will look through the $LOAD_PATH, but will not load the files in the current directory.

# hash.each and hash.map are both iterate over the hash.

# Instance variable for the class is accessible throughout the class.

# this challenge solidify my understanding of Class, method, private method, and Hashes and iterate over hashes.
