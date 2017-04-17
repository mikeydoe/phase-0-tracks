def sample
	puts "hello"
	yield("swanky", "cool")
end

sample { |henney, henney2| puts "Hello #{henney} and #{henney2}" }

letters = ["a", "b", "c", "d", "e"]

numbers = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five"}


new_letters = []

letters.each do |letter|
	new_letters << letter.next
end

p letters
p new_letters

numbers.each do |number, word|
	puts "#{number} and #{word}"
end

letters.map! do |letter|
	puts letter
	letter.next
end

p letters



numbers.select {|number2, value| number2 > 3}

p numbers

numbers.delete_if {|number, word| number >= 3}

p numbers

numbers.shift

p numbers



