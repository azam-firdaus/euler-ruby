def factorial(x)
  if x == 0
    1
  else
    x * factorial(x-1)
  end
end

def count_curious(n)
  number_array = n.to_s.split('').map(&:to_i)
  sum = 0
  
  number_array.each{ |number| sum = sum + factorial(number) }

  sum == n ? (return true) : (return false)
end

all_factorial = []
sum_all_factorial = 0
3.upto(100000) do |k|
  if count_curious(k) == true
    all_factorial << k
    puts k
  end
end

all_factorial.each{ |answer| sum_all_factorial = sum_all_factorial + answer }
puts "Final answer ---> #{sum_all_factorial}"

