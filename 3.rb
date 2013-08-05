class Fixnum

  def prime?
    (2...self).each do |i|
     return false if self%i==0 
    end                        
    true
  end  
    
  def factorials
    remainder = self
    answer = []
    (2..(Math.sqrt(remainder))).to_a.reverse.each do |x|
       if remainder % x == 0 && x.prime?
         answer << x 
         remainder /= x
         remainder.factorials
       end
    end           
    answer
  end

end        

now = Time.now
600851475143.factorials # => [6857, 1471, 839, 71]
after = Time.now
after-now # => 0.196012


