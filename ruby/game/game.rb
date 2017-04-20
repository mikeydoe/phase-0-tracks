MAX_GUESSES = 10

class Wordgame
	attr_accessor 

	def initialize(word=nil)
		if word != nil
		 		@word = word
		else 
				@word = nil
		end

		@wrong_guess = []
		@good_guess = []

	end

	def guess(letter)

		if(@word.include?(letter))
			@good_guesses.add(letter)
		end
	end

	def word()
		return @word
	end

	def total_guesses
		return -1
	end

	def wrong_guesses()
		return @wrong_guess
	end

	def loser()
		lose_game = flase
		if (wrong_guess() == MAX_GUESSES)
				lose_game = true
		end

		return loser
	end

	def winner()
		win_game = false

		if()
			win_game = true
		end

			return win_game
	end

	def hide_letters()
		result = ''
		return result
	end

	def to_s()
		return hide_letters().split('').join(' ')
	end

	def status()
			return to_s() + ", #{total_guess_count()} guesses (#{wrong_guesses()}"
	end

	def test()
		game = Wordgame.new("abigword")

		puts game
		['a', 'b', 'i', 'e', 'o'].each() do |letter|
			game.guess(letter)
	end

		puts game.status()
		"abigword".split('').each() do |letter|
			game.guess(letter)
	end
end
end

game = Wordgame.new
game.test



