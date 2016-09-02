# please ignore whatever comes after dotted line, i'm redoing the assignment for extra practice!

# release 0
def puppies
  p "hello!"
  yield("Charlie", "Waves")
end

puppies {|pup1, pup2| p "have you met #{pup1} and #{pup2}?"}



# each { |item| block } → ary
# map { |item| block } → new_ary
# map! { |item| block } → ary


# release 1
animals = ["bear", "cat", "dog", "pig", "human"]

my_info = {
  name: "Kathy",
  age: 23,
  color: "red",
  college_degree: true,
  weight: 118
}


animals.each {|animal| p "Hey look! It's a #{animal}!"}

animals.map {|animal| p animal.upcase}

animals.map! {|animal| p "---" + animal + "---"}

my_info.each {|info, data| p "#{info}: #{data}"}

my_info.map {|info, data| p "#{info}".swapcase}








































# ---------------------------------------------------------


# #paired with jason warholic

# #release 0 
# def hello
#   puts "hello world"
#   yield("sunnie", "velvet")
# end

# hello { |dog, cat| puts "I am so happy to see you #{dog} and #{cat}" }

# def dogs
#   names = ["Sunny", "Mogley", "Bobby"]
#   names.each do |dog|
#     puts "Is #{dog} one is your dog?"
#   end
#   yield("Hoover")
#   yield("Barney")
# end

# dogs {|dog1| puts "So #{dog1} is your dog!"}
# dogs {|dog1| puts "#{dog1} is BAD DOG!"}
# # messing with yield and seeing what it replaces
# # when the the second dog1 was replaces with dog2, there was an error


# #release 1
# tv_shows = ["Spongebob", "Breaking Bad", "Bob's Burgers", "Friends"]

# tv_shows.each do |show|
#   puts "I love #{show}! Do you?"
# end

# tv_shows.map! do |show|
#     show.swapcase
# end
# puts tv_shows


# electronics = {
#   "Music" => "radio",
#   "Shows" => "tv",
#   "Code" => "computer"
# }

# electronics.each do | use, electronic |
#   puts "#{use} is good for #{electronic}!"
# end

# electronics.map do |use, electronic|
#   use.upcase
# end

#  #release 2

#  # 1 A method that iterates through the items, deleting any that meet a 
# #certain condition (for example, deleting any numbers that are less than 5).

# #array
# array = [1,2,3,4,5,6,7,8,9,10]
# array.delete_if {|number| number < 5}

# p array

# #hash
# hash = {"tv_show" => "spongebob", 1 => 2, "happy" => true, "sad" => false}
# hash.delete_if  { |key, value| key == "sad"}

# p hash

# # 2 A method that filters a data structure for only items that do
# # satisfy a certain condition (for example, keeping any numbers
# #  that are less than 5).

# #array
# array2 = [1,2,3,4,5,6,7,8,9,10]
# array2.select! {|number| number < 5}

# p array2

# #hash
# hash2 = {"tv_show" => "spongebob", 1 => 2, "happy" => true, "sad" => false}
# hash2.select! {|key, value| key == "tv_show" }

# p hash2

# #3 A different method that filters a data structure
# # for only items satisfying a certain condition -- Ruby offers several options!

# #array
# array3 = [1,2,3,4,5,6,7,8,9,10]
# array3.keep_if { |number| number.odd?}

# p array3

# #hash
# hash3 = {"tv_show" => "spongebob", 1 => 2, "happy" => true, "sad" => false}
# hash3.keep_if { |key, value| value == true}

# p hash3

# #4 A method that will remove items from a data structure 
# # until the condition in the block evaluates to false, 
# #then stops (you may not find a perfectly working option for the hash, and that's okay).

# #array
# array4 = [1,2,3,4,5,6,7,8,9,10]
# new_array = array4.drop_while {|number| number < 5}

# p new_array

# #hash
# hash4 = { "a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5 }
# new_hash = hash4.length
# hash4.delete_if { |key, value| value < new_hash - 2}
# p hash4













