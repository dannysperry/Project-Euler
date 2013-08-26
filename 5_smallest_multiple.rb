# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# 
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

class Fixnum
   
  def divisible?(num)
    (1..num).to_a.each do |x|
      break if self % x != 0
    end
  end  
  
  def div(num) # !> method redefined; discarding old div
    answer = 0    
    num.step(self,num).each do |x|
      if x.divisible?(num) == (1..num).to_a
          answer = x if x > answer
          break
      end                     
    end        
    answer                                                                                            
  end
  
end  
                                 

0.step(400,20) {|i| i} # => 0

now = Time.now
100000000000.div(20) # => 232792560
later = Time.now
later-now # => 40.388666
