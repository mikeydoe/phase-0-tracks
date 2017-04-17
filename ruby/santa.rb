class Santa
	attr_reader :ethinicity, :age
	attr_accessor :gender

	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
		p "#{@gender} " "#{@ethnicity}"
	end

	def eat_milk_and_cookies(cookie_type)
		p "That was a good #{cookie_type}!"
	end

	def initialize(gender, ethnicity)
		p "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		p "#{@age}"
	end

	def reindeer_ranking
	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", 
						"Comet", "Cupid", "Donner", "Blitzen"]
	end

	def celebrate_birthday(years)
		new_age = years + @age.to_i
		p new_age
	end

	def get_mad_at(reindeer)
		new_reindeer_ranking = reindeer_ranking << reindeer
		p new_reindeer_ranking
	end

end

santa = Santa.new("Male", "Black")


santa.eat_milk_and_cookies("brownie")

santa.gender = "Bi"

santa.speak

santa.celebrate_birthday(3)

initialize

def create_santa(quantity)

santas = []

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say",
						 "Mystical Creature (unicorn)", "N/A"]
 quantity.times do 
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end
  p santas
 end
create_santa(5)
santa.get_mad_at("Milo")


