# Created an array from various items 

def build_array(arr, int, string)
  new_array = [arr, int, string]
end

# Added items to an existing array

def added_item(arr, str)
  added_array = arr << str
end


# Playing with Arrays

flowers = []
p flowers

flowers.push("daisies", "roses", "sunflowers", "tulips", "lilies")
p flowers

flowers.delete_at(2)
p flowers

flowers.insert(2,"carnations")
p flowers

flowers.shift
p flowers

p "True or false? Does this list include roses? And the answer is... #{flowers.include?("roses")}"

colors = ["blue", "red", "yellow"]

colorful_flowers = flowers + colors
p colorful_flowers


# Calling our methods

p build_array(["red", "blue", "yellow"], 2, "hello world")

p added_item(["red", "blue", "yellow"], "ice-cream")
p added_item(["sansa", "tyrion", "jamie"], "burgers")
p added_item(["3", "4", "5"], "pizza")