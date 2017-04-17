# First I will create a name variable. I will then use the the split 
# and reverse method to seperate the name into 2 words and then switch the order.
#I will then split the 2 names into individual letters using split and filter 
#out vowels using select. Then using the next method I should be able to
#change the name.

p "Please Enter a Name or 'Quit' to stop"


def order_switch()
	name = gets.chomp
	p name.tr('aeiou', 'eioua').split(' ').reverse
end

def split_names

order_switch.each { |name| p name.to_s.split('')}

end

def switching_out_consonants
	split_names.each {|letter| p letter.next}
end

switching_out_consonants


