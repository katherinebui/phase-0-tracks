def search_array(array, number)
# checks if the array includes the number 
  # index = 0
  # while index < array.length
  #   if array.include?(number)
  #    return array.find_index(number}
  # else !array.include?(number)
  #    return nil
  #   end
  # end

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


def fibonacci
  # .inject?
end





