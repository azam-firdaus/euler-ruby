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

def test_prime(x)
  prim = 0
  (x).downto(1) do |i|
    if x % i == 0
      prim = prim + 1
    end
  end
  return true if prim == 2
end

prime_number = []

# number = 0
# 
# until number == 2000000
#   number = number + 1
#   prime_number << number if test_prime(number) == true
# end

prime_number = better_check_prime(2000000)

sum = 0
prime_number.each do |prime|
  sum = sum + prime
end
puts sum
