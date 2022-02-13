# When done, submit this entire file to the autograder.

# Part 1

def sum (array)
   if array.empty?
       return 0
    else
        return array.sum {|i| i}
    end
end

def max_2_sum (array) 
  if array.empty?
       return 0
    elsif array.size == 1
       return array[0] 
    else 
        res = array.sort_by{|i| -i}
        return res[0] + res[1]
    end
end

def sum_to_n? (array, n)
    if array.empty?
       return false
    elsif array.size == 1
       return false 
    else 
        for i in 0...array.size
          for j in 0...array.size
            if array[i] == array[j]
              next
            else 
              if array[i] == n - array[j]
                return true
              end
            end
          end
        end
        return false
    end
end

# Part 2

def hello(name)
   return "Hello, " + name
end

def starts_with_consonant?(s) 
  if s =~ /^[qwrtyplkjhgfdszxcvbnm]/i
        return true
    else
        return false
    end
end

def binary_multiple_of_4? (s)
   if s.length == 0
     return false
   end
   if s =~ /^[01]{#{s.length}}/
        if(s.to_i(base=2) % 4 == 0)
            return true
        else
            return false
        end
        
    else
        return false
    end
end

# Part 3

class BookInStock
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn= (isbn)
    @isbn = isbn
  end
  
  def price= (price)
    @price = price
  end
  
  def initialize (isbn, price)
    raise ArgumentError.new("Empty isbn") if isbn.length <= 0
    raise ArgumentError.new("Non-positive price") if price <= 0
    @isbn = isbn
    @price = Float(price)
  end
  
  def price_as_string()
    "$%0.2f" % [@price]
  end

end
