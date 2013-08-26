# 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# 
# What is the sum of the digits of 2 to the 1000th power?

class Integer   
  
  def to_power_of(num)
     self**num
  end       
  
  def sum
    self.to_s.split(//).inject(0){|total,x| total+x.to_i }
  end
  
end  
         
   
2.to_power_of(1000).sum # => 1366
