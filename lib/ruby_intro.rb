# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr_sum = 0
  for i in arr
    arr_sum += i
  end
  return arr_sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
    
  else
    largest = arr[0]
    second_largest = arr[1]
    
    i = 0
    largest_index = 0
    for x in arr
      if x > largest
        largest = x
        largest_index = i
      end
      i += 1
    end
    
    j = 0
    for x in arr
      if x > second_largest && j != largest_index
        second_largest = x
      end
    end
    
    return largest + second_largest
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 1
    return false
  end 
  
  i = 0
  for x in arr
    j = 0
    for y in arr
      if (x + y) == n && i != j
        return true
      end
      j += 1
    end
    i += 1
  end
  
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s =~ /^[bcdfghjklmnpqrstvwxyz]/i
    return true
  end
  
  return false
end

def binary_multiple_of_4? s
  if s =~ /[^01]/
    return false
  end
  
  if s =~ /^0$/
    return true
  end
  
  if s =~ /00$/
    return true
  end
  
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn_num, starting_price)
    raise ArgumentError, "ISBN not a string" unless isbn_num.is_a? String and isbn_num.length > 0
    raise ArgumentError, "price is less than or equal to zero" unless starting_price > 0
    
    @isbn = isbn_num
    @price = starting_price
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string
    return "$%0.2f" % [price]
  end
end