# The sum of the squares of the first ten natural numbers is,
# 
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
# 
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 
# 3025 − 385 = 2640.
# 
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


class Fixnum
  
   def natural_squares
     (1..self).to_a.inject(0) {|sum,i| sum = sum + i**2}
   end
   
   def squares
    (1..self).to_a.inject(0,:+)**2
   end 
   
   def square_difference
      self.squares - self.natural_squares
   end
  
end

100.square_difference # => 25164150
