# please ignore everything below the dash line. I am redoing this for extra practice!

class TodoList
  def initialize(arr)
    @arr = arr  
  end
  def get_items
    p @arr
  end
  def add_item(item)
    @arr << item
  end
  def delete_item(item)
    @arr.delete(item)
  end
  def get_item(number)
    @arr[number]
  end
end 























# -------------------------------------------
# class TodoList

#   def initialize(items)
#     @items = items
#   end

#   def get_items
#     @items
#   end

#   def add_item(item)
#     @items << item
#   end

#   def delete_item(item)
#     @items.delete(item) 
#   end

#   def get_item(i)
#     p @items[i]
#   end

# end 