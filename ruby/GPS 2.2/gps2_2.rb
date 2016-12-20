# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: seperate the items in an array
  #
  # set default quantity will be 0
  # print the list to the console [can you use one of your other methods here?]
# output: hash with the key as the item and value as the quantity
def create_list ( items )
  grocery_list = {}
  value = 0
  temp_arry = items.split(",")
  temp_arry.each {|x| grocery_list[x]=value}
  return grocery_list
end

#create_list ("carrot banana tomato")

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: list will be the name of the hash
 	# item will be the key
 	#quantity will be the value
# output:the hash with added hash

# list = {listname : {item : quantity}}


def add_item(list, item, quantity)
  list[item] = quantity
end






 # list = {
 # item: quantity
 # }


# Method to remove an item from the list
# input:list and the item
# steps: iterate through the hash for the key
 	# remove the item key
# output: updated hash
def remove_item (list, item)
  list.delete_if {|key, value| key==item }
end

#remove_item(grocery_list, "banana")

# Method to update the quantity of an item
# input: list, item, new quantity
# steps:iterate through the list to find the item
 	#update the quantity of item
# output:updated hash
def update_quantity (list, item, quantity)
    list[item] = quantity
end

# Method to print a list and make it look pretty
# input:list
# steps:iterate through print
 # Here is your list:
 # list name
 # item : quantity
# output: pretty printed list
def print_pretty (list_name, list)
  p list_name.upcase.center (100)
  list.each do |x,y|
    p "#{x.rjust(50)} : #{y.to_s.ljust(50)} "
  end
end

#print_pretty("Today List" ,grocery_list)


#
# Create a new list
grocery_list = create_list ("")
# Add the following items to your list

add_item(grocery_list,"Lemonade", 2)

add_item(grocery_list,"Tomatoes" , 3)

add_item(grocery_list,"Onions" , 1)

add_item(grocery_list,"Ice Cream" , 4)

remove_item(grocery_list,"Lemonade")

update_quantity(grocery_list,"Ice Cream" , 1)
print_pretty("Today's List", grocery_list)
# Lemonade, qty: 2
# Tomatoes, qty: 3
# Onions, qty: 1
# Ice Cream, qty: 4
# Remove the Lemonade from your list
# Update the Ice Cream quantity to 1
# Print out your list (Is this readable and nice looking)?



# Lemonade, qty: 2
# Tomatoes, qty: 3
# Onions, qty: 1
# Ice Cream, qty: 4
# Remove the Lemonade from your list
# Update the Ice Cream quantity to 1
# Print out your list (Is this readable and nice looking)?

# What did you learn about pseudocode from working on this challenge?
#
# What are the tradeoffs of using arrays and hashes for this challenge?
# array is easier to access and have more functionality
# but hashes is easier to find and record the data as a record.
#
# What does a method return?
# a method return a explict return or implicit return.
# sometimes there are some sideeffects that a method process the data or manipulate the data.
#
#
# What kind of things can you pass into methods as arguments?
# almost every type of data.
# sometimes even code block.
#
# How can you pass information between methods?
# We can pass information between methods using parameters, arguments. using global variable or using the
#
#
# What concepts were solidified in this challenge, and what concepts are still confusing?
# The challenge are made so that its instruction help us breakdown the program into smaller steps.
# Within each step, we can be more familiar with the usage of methods.
