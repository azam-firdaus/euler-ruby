def fibonacci(number)
 fibs_hash = Hash.new
  if number < 2
    1
  else
    # check to see whether we've already computer fibonnacci(x)
    fibs_hash[number]
    fibonacci(number-1) + fibonacci(number-2)
  end
end

def better_fibonacci(n, cache = {})
  if n == 0 || n == 1
    return n
  end
  cache[n] ||= better_fibonacci(n-1, cache) + better_fibonacci(n-2, cache)
end

number_contained = 0
number = 0
while number_contained < 1000
  number = number + 1
  # fibonacci_number = fibonnacci(number)
  fibonacci_number = better_fibonacci(number)
  number_contained = fibonacci_number.to_s.length
end

puts fibonacci_number
puts number