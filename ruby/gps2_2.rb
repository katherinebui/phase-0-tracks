# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # convert to hash
  # set default quantity = 1
  # print the list to the console 
# output: hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
  # 1. adding item to hash by using <<
  # 2. add quantity to hash by using hash[item] = 
# output: new hash = item: quantity

# Method to remove an item from the list
# input: declare hash.delete(key) / hash removal method
# steps: 
  # 1. go into the hash and declare what item we want to delete
# output: new hash with the item subtracted

# Method to update the quantity of an item
# input: hash[item] = new quantity
# steps: 
  # 1. go into the hash
  # 2. get the key (item) that we want to update
  # 3. declare a new value (quantity)
# output: hash with updated quantity

# Method to print a list and make it look pretty
# input: iterate and print using interpolation 
# steps: 
  # 1. .each to iterate through hash
  # 2. p "#{item}: #{quantity}"
# output: "carrots: 2"


$grocery_hash={} 
# can't use a class structure, but need to make grocery hash global for access
# but global variables are evil, so never again
# learned the importance of scope

def new_grocery_list(string)
  grocery_list = string.split(' ')
  grocery_list.map! do |item|
  $grocery_hash[item] = 1 
  end
end

def add_grocery_item(item)
  new_grocery_list(item)
end

def delete_grocery_item(item)
  $grocery_hash.delete(item)
end

def update_grocery_item(item, quantity)
  $grocery_hash[item] = quantity
end

def print
  $grocery_hash.each do |item, quantity|
    p "We need #{quantity} more #{item}"
  end
end

# new_grocery_list("apples bananas mangos")
# add_grocery_item("bread")
# add_grocery_item("ice")
# p $grocery_hash

# delete_grocery_item("bread")
# p $grocery_hash

# update_grocery_item("apples", 4)
# p $grocery_hash

# print

new_grocery_list("lemonade tomatoes onions")
update_grocery_item("ice-creams", 2)
update_grocery_item("tomatoes", 3)
# p $grocery_hash

add_grocery_item("ice-creams")
update_grocery_item("ice-creams", 4)
# p $grocery_hash

delete_grocery_item("lemonade")
# p $grocery_hash

update_grocery_item("ice-creams", 1)
# p $grocery_hash

print


# REFLECTIOn
=begin
  
=end








