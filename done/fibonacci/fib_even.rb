# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
  # 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

def fib(n)
  prev = 0 
  curr = 1 
  (n - 1).times do 
    curr, prev = prev+curr, curr 
  end
  curr
end

current = sum = i = 0;
while current < 4000000 do 
  current = fib(i)
  sum += current if current.even?
  i += 1
end

puts sum
