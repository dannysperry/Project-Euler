# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
# The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.  

class Fixnum
  
  def three_and_five
    arr = (1...self).to_a.map! do |i| 
     i if i%3==0 || i%5==0 
    end                    
    arr.compact.inject(0,:+)
  end
          
end
