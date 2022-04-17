
def amicable(y)
  number_array = divisor(y)
  sum = 0
  number_array.each do |number|
    sum = sum + number
  end
  return sum
end

def divisor(x)
  value_divisor = []
  (x-1).downto(1) do |k|
    if x % k == 0
      value_divisor << k
    end
  end
  return value_divisor
end

sum_all = 0
1.upto(10000) do |j|
  sum_all = (sum_all + amicable(j)) if j != amicable(j) && j == amicable(amicable(j))
end

puts sum_all

