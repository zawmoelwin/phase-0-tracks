
class Santa
	attr_accessor :age ,:gender ,:ethnicity
	# attr_accessor (:gender)
	# attr_accessor (:ethnicity)
	def celebrate_birthday
		@age+=1
	end

	def get_mad_at (name)
		temp = name
		@reindeer_ranking.reject! {|x| x==name}
		reindeer_ranking << name
	end

	def speak
	puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies (cookie_type)
	puts "That was a good #{cookie_type}!"
	end

	def initialize (gender , ethanicity)
	puts "Initializing Santa instance ..."
	@gender = gender
	@ethnicity = ethanicity
	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	@age = 0
	end

	# The @gender attribute should have a setter method that allows @gender to be reassigned from outside the class definition.

end


santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

# driver code for setter and getter
# santas.each do |x|
# 	x.celebrate_birthday	
# 	puts x.age_getter
# 	puts x.ethnicity_getter
# 	puts x.gender_getter
# end


example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]


# Write a program that creates lots of Santas. If you're on a cloud-based environment, you may not want to push it past about a hundred Santas. If you're on a faster computer, you may be able to make lots more than that. Play around with the numbers and see what happens.

# Obviously, no one wants to create ten thousand Santas by hand. That's what computers are for!

# Use our array of example genders and an array of example ethnicities (and feel free to add to it if you like -- each array could have a lot more options in it!) to create your Santas with a randomly selected gender and a randomly selected ethnicity. (How do you randomly select an array item? The Array documentation should be able to help you out there!)
# Set your new Santa's age to a random number between 0 and 140.
# No need to store your Santas in a data structure, but your program should print out the attributes of each Santa using the instance methods that give you access to that data.

100.times do |x|
	santas << Santa.new(example_genders[rand(example_genders.length)] , example_ethnicities[rand(example_ethnicities.length)])
end

santas.each do |x|
	x.celebrate_birthday	
	puts x.age
	puts x.ethnicity
	puts x.gender
end

# x = nil
# z = false
# y = z || x
# puts y
# x = x||"ruby"
# puts x

# gender, which will be a string passed in on initialization
# ethnicity, which will be a string passed in on initialization
# reindeer_ranking, an array of reindeer from most preferred to least preferred. This is not passed in on initialization; it simply gets a default value of ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
# age, which is not passed in on iitialization and defaults to 0

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

# Add three attribute-changing methods to your Santa class:

# celebrate_birthday should age Santa by one year.
# get_mad_at can take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings. Vixen knows what he did.
# The @gender attribute should have a setter method that allows @gender to be reassigned from outside the class definition.
# Add two "getter" methods as well:

# The method age should simply return @age.
# The method ethnicity should return @ethnicity.
# Update your driver code to test your work.

