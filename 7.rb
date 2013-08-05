# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# 
# What is the 10 001st prime number?

class Fixnum

  def prime?
    (2...self).each do |i|
     return false if self%i==0 
    end                        
    true
  end

  def primes
    arr = (2..999999).to_a
    (2..Math.sqrt(999999)).to_a.each do |i|
      if i.prime?
        arr = arr.reject {|x| x%i==0 unless x==i}
      end
    end
    arr[self]
  end   
     
end  

now = Time.now
10000.primes # => 104743
later = Time.now
later-now # => 1.908233


