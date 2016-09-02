# def search_array(array, number)
# checks if the array includes the number 
#   index = 0
#   while index < array.length
#     if array.include?(number)
#      return array.find_index(number)
#   else !array.include?(number)
#      return nil
#     end
#   end
# end

def search_array(array, number)
# checks if the array includes the number 
  array.each do |element|
    if array.include?(number) # check if the number is included in the array
      return array.find_index(number) # find the index of number
    else !array.include?(number) # if not included return nil
     return nil
    end
  end
end


array = [1, 3, 5, 7, 9, 19, 56]
p search_array(array, 0)
# return nil
p search_array(array, 3)
# array[1]
# return 1
p search_array(array, 19)
# return 5
p search_array(array, 56)
# return 6
p search_array(array, 2)
# return nil

# array.at(index#) = returns value at that index position = array.fetch(index#)


# two arrays
#   old = [0, 1, 2, 3, 4, 5, 6]
# push first element in new array 
#   new = [0]
# delete the first index
# take first index of old and add to last index of new
# push to new array
#   new = [0, 1, 1]
# delete first element of old array 
#   old = [2, 3, 4, 5, 6]
# repeat: take first index of old array and add to last of new array
# push number to new array
#   new = [0, 1, 1, 2]
# delete first index of old array

def fib(number)
  number = number.to_i # take in number and conver it to integer
  array = (0...number).to_a # turn range of the number into array

  new_array = [] # initialize new array
  new_array << array[0] # pushing the first number into the array
  new_array << array[1] # pushing the second number to array to have two beginning #
  array.delete(0) # delete the number from the first array

  # DRY - loop through because repeat in code
  index = 0  # start loop to run thru the whole array
  while index < array.length - 1 # doesn't want to include the last sum
    sum = new_array[-1] + new_array[-2] # index positions of the last two #
    new_array << sum # pushing the new number into the new
    index += 1 # no infinite loops please
  end
    
  p new_array

end

# driver code
fib(6)
fib(20)
fib(100)


# SORTING THE ARRAY : BUBBLE SORT
# https://www.sitepoint.com/sorting-algorithms-ruby/
# http://stackoverflow.com/questions/23504909/bubble-sorting-logic-in-ruby-method
# https://www.youtube.com/watch?v=x9G7_1RvyB8

def bubble_sort(array) # pass an array = list of numbers
  n = array.length # set as a variable so easier to read later, cs convention n = array, total of array
  loop do # start the loop to check each value of array and compares them
    swapped = false # check to see if the item is false, looking for break out of loop
    (n-1).times do |i| # want one less than 1 array, in the list of #, want to access on # at a time = |i|
      if array[i] > array[i+1] # the position of the number in the list
    # since this is conditional, it will only run if the first part is true
    # array[i] = refers to the position of the number in the list
        array[i], array[i+1] = array[i+1], array[i] # if the condition is true, the numbers will swap the two positions
        swapped = true 
      end
    end
    break if not swapped # break out of the loop only if swap is not true
  end
  array # want to return the array
end

array = [4, 5, 2, 5, 6, 8, 3]
p bubble_sort(array)

a = [1, 2, 4, 6, 3, 7, 4, 9]
p bubble_sort(a)

cool = [7, 3, 6, 9, 0, 3]
p bubble_sort(cool)




