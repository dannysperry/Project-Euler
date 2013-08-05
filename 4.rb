# A palindromic number reads the same both ways. The largest palindrome made from the product 
# of two 2-digit numbers is 9009 = 91 × 99.
# 
# Find the largest palindrome made from the product of two 3-digit numbers.

class Fixnum
   
  def palindromic?
    self.to_s == self.to_s.reverse
  end
  
end  

def three
nums = []
num = 0
  (100..999).to_a.reverse.each do |i|
    (100..999).to_a.reverse.each do |j|
       num = i*j
       nums << num if num.palindromic?
    end                                 
  end
  nums.max
end
    




now = Time.now
three # => 906609
done = Time.now
done-now # => 0.487927
