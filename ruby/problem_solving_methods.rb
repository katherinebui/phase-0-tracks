# def search_array(array, number)
# # checks if the array includes the number 
#   # index = 0
#   # while index < array.length
#   #   if array.include?(number)
#   #    return array.find_index(number}
#   # else !array.include?(number)
#   #    return nil
#   #   end
#   # end

# # checks if the array includes the number 
#   array.each do |element|
#     if array.include?(number) # check if the number is included in the array
#       return array.find_index(number) # find the index of number
#     else !array.include?(number) # if not included return nil
#      return nil
#     end
#   end
# end


# array = [1, 3, 5, 7, 9, 19, 56]
# p search_array(array, 0)
# # return nil
# p search_array(array, 3)
# # array[1]
# # return 1
# p search_array(array, 19)
# # return 5
# p search_array(array, 56)
# # return 6
# p search_array(array, 2)
# # return nil

# # array.at(index#) = returns value at that index position = array.fetch(index#)


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

  new_array = []
  new_array << array[0]
  new_array << array[1]
  array.delete(0)

  # DRY - loop through because repeat in code
  index = 0 
  while index < array.length - 1 # doesn't want to include the last sum
    sum = new_array[-1] + new_array[-2] # index positions of the last two #
    new_array << sum
    index += 1
  end
    
  p new_array

end

# driver code
fib(6)
fib(20)
fib(100)



















