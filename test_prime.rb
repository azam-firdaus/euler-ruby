require 'benchmark'

def check_prime(upper_limit)
  array_number = []
  2.upto(upper_limit) { |j| array_number << j}

  # for i in 0..(array_number.length - 1)
  array_number.each do |number|
  first = array_number.first  
  last = array_number.last
    (first).upto(last) do |k|
      number_to_delete = number * k
      array_number.delete(number_to_delete)
    end
  end
  array_number.each { |print_num| puts print_num}
  # return array_number
end

def test_prime(x)
  prim = 0
  (x).downto(1) do |i|
    if x % i == 0
      prim = prim + 1
    end
  end
  return true if prim == 2
end

def better_check_prime(x)
  prime_limit = (0..x).to_a
  prime_limit[0] = prime_limit[1] = nil
  prime_limit.each do |p|
    next unless p
    break if p * p > x
    (p * p).step(x, p) { |m| prime_limit[m] = nil }
  end
  prime_limit.compact
end

time = Benchmark.realtime do
  prime_array = []
  # check_prime(100)
  # for i in 1..100
  #   puts i if test_prime(i) == true
  # end
   prime_array = better_check_prime(1000001)
   puts prime_array.last
end

puts "Time elapsed #{time*1000} milliseconds"