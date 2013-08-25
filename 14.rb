# The following iterative sequence is defined for the set of positive integers:
# 
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
# 
# Using the rule above and starting with 13, we generate the following sequence:
# 
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
# 
# Which starting number, under one million, produces the longest chain?
# 
# NOTE: Once the chain starts the terms are allowed to go above one million.

class Fixnum

  def sequence
    self.even? ? self/2 : self*3 + 1
  end           
           

  def chain
    arr ||= [self]
    until arr.last == 1 
      arr << arr.last.sequence
    end          
    arr.length
  end
  
  def greatest
    greatest ||= 0
    num ||= 0
    (1..self).grep(->(n) { n.to_i.odd? }) do |x|
       if x.chain > greatest
          greatest = x.chain
          num = x
       end
    end
    num
  end

end             




start = Time.now
1000000.greatest # => 837799
finish = Time.now
finish - start # => 14.05683
                           
