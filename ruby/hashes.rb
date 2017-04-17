# I want to create a loop that can store a users information into a hash. 
# That way all infomration can be compiled into one group and can organized

client_information = {
  
}

puts "Please provide your name:"

client_information [:name] = gets.chomp.to_s

puts "Please provide your age:"

client_information [:age] = gets.chomp.to_i

puts "How many children do you take care for?"

client_information [:number_of_children] = gets.chomp.to_i

puts "What is the theme of your decor?"

client_information [:decor_theme] = gets.chomp.to_i

puts "Thank you! This is that data we have received:"

p client_information

puts "Is there any information you would like to change? (Enter 'yes' or 'no')"

input = gets.chomp.to_s

if input == "yes" || "Yes" || "y"

	puts "Which information would you like to change?"
	
	information_change = gets.chomp.to_s

	if information_change == "decor theme" 

		puts "What would you like to correct this to?"

		client_information[:decor_theme] = gets.chomp.to_s
		
		puts "Thank you, here is your revised information!"
		
		p client_information

	elsif information_change == "number of children"

		puts "What would you like to correct this to?"

		client_information[:number_of_children] = gets.chomp.to_i
		
		puts "Thank you, here is your revised information!"
		
		p client_information

	elsif information_change == "age"

		puts "What would you like to correct this to?"

		client_information[:age] = gets.chomp.to_i
		
		puts "Thank you, here is your revised information!"
		
		p client_information

	elsif information_change == "name"

		puts "What would you like to correct this to?"

		client_information[:name] = gets.chomp.to_s
		
		puts "Thank you, here is your revised information!"
		
		p client_information

	else 
		puts "That is an invalid response please enter a valid category"

		client_information

	end

elsif input == "no" || "No" || "n"

puts "Thank you for submitting your application!"	
		
else
	puts "This is an invalid response, please respond with 'yes' or 'no':"
	

end
		
