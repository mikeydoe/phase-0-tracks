# module Shout
#	def self.yell_angrily(words)
#		words + "!!!" + " :("
#	end
#	def self.yelling_happily(words)
#		words + "!!!" + " :)))"
#	end
#end

#p Shout.yelling_happily("Whats going on")
#p Shout.yell_angrily("Hey guys")

module Shout
	def yell_angrily(words)
		words + "!!!" + " ... :/"
	end
end

class Me
	include Shout
end

class You
	include Shout
end

me = Me.new
you = You.new

p me.yell_angrily("You're mean")
p you.yell_angrily("Hey Man")