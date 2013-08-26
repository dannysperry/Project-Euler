# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# 
# Find the sum of all the primes below two million.


class Fixnum

  def prime?
    (2...self).each do |i|
     return false if self%i==0 
    end                        
    true
  end

  def primes
    arr = (2..self).to_a
    (2..Math.sqrt(self)).each do |i|
      if i.prime?
        arr = arr.reject {|x| x%i==0 unless x==i}
      end
    end
    arr.inject(0,:+)
  end   
     
end
# 
# now = Time.now
# 2000000.primes # => 142913828922
# later = Time.now
# later-now # => 4.661413   

3.step(6,2) {|x|puts x} # => 3
# >> 3
# >> 5
