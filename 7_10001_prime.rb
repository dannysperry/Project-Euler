# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# 
# What is the 10 001st prime number?

class Fixnum

  def prime?
    (3..Math.sqrt(self)).each do |i|
     return false if self%i==0 
    end                        
    true
  end

  def primes
    arr,i = [2,3],3
    until arr.length == self
      i+=2
      arr << i if i.prime?
    end
    i
  end   
     
end  

now = Time.now
10000.primes # => 104729
later = Time.now
later-now # => 0.612209

