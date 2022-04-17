
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

def count_number(q)
  sum = 0
  0.upto(q.length-1) do |d|
    sum = sum + q[d]
  end
  return sum
end

abundant = []
12.upto(28100) do |k|
  if amicable(k) > k
    abundant << k
  end
end

limit_abundant = abundant.length-1
sum_abundant = []
0.upto(limit_abundant) do |g|
  0.upto(limit_abundant) do |p|
    sum = abundant[g] + abundant[p]
    sum_abundant << sum if g <= p && sum <= 28123
  end
end

limit = sum_abundant.length-1
sum_abundant.uniq!

non_abundent = []
all_number = []

(sum_abundant.length).upto(28122) { |f| sum_abundant[f] = 0 }

0.upto(28122) { |w| all_number[w] = (w + 1) }

similar = all_number & sum_abundant

0.upto(similar.length-1) do |s|
  to_delete = similar[s]
  all_number.delete(to_delete)
end

puts count_number(all_number)
