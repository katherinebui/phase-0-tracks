# Release 1

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # 1) Create a string of items
  # 2) Set default quantity
  # 3) Print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # 1) Indicate which items and quantity to add to the hash
  # 2) Insert into hash
# output: hash of item (string) and quantity (integer)

# Method to remove an item from the list
# input: item name and optional quantity
# steps:
  # 1) Delete items from the hash
# output: new hash reflecting items that still belong

# Method to update the quantity of an item
# input: new quantity of item being updated
# steps:
  # 1) Access key value and replace with new value
# output: new hash reflecting new quanities

# Method to print a list and make it look pretty
# input: the current hash
# steps:
  # 1) print the hash
# output: Final hash (list)


grocery_list = "lemonade tomatoes onions icecream"
@grocery_hash = {}

def create_list(item)
  grocery_array = item.split(" ")
  grocery_array.each do |item|
    @grocery_hash[item] = 1 
  end
  #p @grocery_hash
end

def add_to_list(item)
  @grocery_hash[item] = 1 
  # p @grocery_hash
end

def remove_item(item)
  @grocery_hash.delete(item)
  # p @grocery_hash
end

def update(item, quantity)
  @grocery_hash[item] = quantity
end

def print
  p "Please buy the following items:"
  @grocery_hash.each do |item, quantity|
    p "#{item}: #{quantity}"
  end
end 

create_list(grocery_list)
add_to_list("popcorn")
update("lemonade", 2)
update("tomatoes", 3)
update("icecream", 4)
remove_item("lemonade")
update("icecream", 1)
print









