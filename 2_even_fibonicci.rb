# Each new term in the Fibonacci sequence is generated by adding the previous two terms. 
# By starting with 1 and 2, the first 10 terms will be:
# 
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# 
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, 
# find the sum of the even-valued terms. 

def fibonacci(num)  
  i=1
  arr = [1,2]
  while i < num
     i = arr[-2..-1].inject(0,:+)
     arr << i
  end        
  arr.reject! {|i| i%2!=0 || i>num}                      
  arr.inject(0,:+)
end

fibonacci(4000000) # => 4613732