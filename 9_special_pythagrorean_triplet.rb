# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# 
# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 52.
# 
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def pathag
  arr = 0
  (1..500).each do |x|
    (x..500).each do |y|
      (y..500).each do |z|
        if (x**2 + y**2 == z**2) && (x+y+z==1000)
          return arr = (x*y*z)
        end
      end
    end
  end
end

now = Time.now
pathag # => 31875000
later = Time.now
later - now # => 3.861602

