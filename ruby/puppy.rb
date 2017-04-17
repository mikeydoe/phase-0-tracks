# Species
# Kentucky WildCats

#Characteristics
#Friendly: Yes
#Eye count: 2
#Leg cout: 4
#Name: varies
#Fur length: varies

#Behavior
#Rebounder
#Strong in the post
#Jumpshot

class Puppy

	def fetch(toy)
		puts "I got the #{toy}!"
	end

	def speak(arg= number_of_times)
		arg.times do puts "Woof!"
		end
	end

	def roll_over 
		puts "*rolls over*"
	end

	def dog_years(arg= human_years)
		conversion = arg / 7
		p conversion
	end

	def game_winner
		p "hits the game winning shot!"
	end

	def initialize
		p "initializing new puppy instance..."
	end

end

Puppy.new.fetch("ball")

Puppy.new.speak(3)

Puppy.new.roll_over

Puppy.new.dog_years(28)

Puppy.new.game_winner

initialize



class NCAA

	def initialize
		puts "Here is a new team:"
	end

	def final_four
		puts "who is in the final 4?"
	end

	def champion
		puts "Congrats on winning the national title!"
	end

end

ncaa_array = []



def creating_instances(arg= array, arg2= loop_number)
	arg2.times do arg << NCAA.new 
	end
end

creating_instances(ncaa_array, 50)

ncaa_array.each {|instance| instance.champion}




