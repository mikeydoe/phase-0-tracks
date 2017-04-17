# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Create a method that sends string data types into an array. 
  # 5
  # print the list to the console [can you use one of your other methods here?]
# output: array


def create_list
	input = "Cake", "Apples", "Juice" , "Salad" , "Steak"
end

def new_list
	list = "Banana", "Fish", "Alcohol"
end

list_pt2 = new_list
my_list = create_list 



# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: Create a method specifying the list, and then allow the user to add 
# data types to said array with an optional quantity.
# output: Array

def add_to_list(arg1= array, arg2= item, arg3= quantity)
    arg3.times do
	arg1 << arg2
end
p arg1
end

add_to_list(list_pt2, "Tomato", 5)

# Method to remove an item from the list
# input: list, item to delete, and quantity
# steps: Creating a method specifying the list and deleting certain items. 
# output: Array

def remove_from_list(arg1= array, arg2= item, arg3= quantity)
	arg3.times do
    arg1.delete(arg2)
	end
	p arg1
end

remove_from_list(list_pt2, "Tomato", 3)

# Method to update the quantity of an item
# input: List, Item, Quantity 
# steps: Changes the quantity of a prexisting item within the array
# output: Array

def item_quantity(arg1= array, arg2= item, arg3= quantity)
	add_to_list(arg1, arg2, arg3)
end

item_quantity(list_pt2, "Pork", 2)

# Method to print a list and make it look pretty
# input:
# steps: Makes array easier to read
# output: Array

def print_list(arg1= array)
	puts arg1
end

print_list(list_pt2)

#pseudocode is always useful to verbalize what you are trying to do rather than think 
#about it completely in code. A lot of Ruby is logoic so if you can break down a 
#program and solve it piece by piece it is easier when you have pseudocode to explain it also.

#Using arrays and hashes was difficult because everything had to be defined within the method. 
#If we could have used a class, everything could have been defined within the class and would
#have been a lot easier.

#A method returns a value, it can either be an integer, string, nil or boolean.

#Method arguments can take many different types of elements such as an array, integer and
#string all at the same time.

#You can pass information between methods by putting methods within each other changing out
#comes depening on what is passed through the arguement.

#I felt as though I was able to manipulate arrays with methods. However I still am having trouble 
#with specifying as currently, the "remove_from_list" method removes all values of the
#given string. Not just the amount of times I enter. 