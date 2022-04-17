
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
  prim = []
  (x).downto(1) do |i|
    if x % i == 0
      prim << i
    end
  end
  return true if prim.length == 2
end

prime_numbers = []

number = 0
# until prime_numbers.count == 10001
#   number = number + 1
#   prime_numbers << number if test_prime(number) == true
# end
# puts prime_numbers.max
until prime_numbers.length == 10001
  number = number + 1
  prime_numbers = better_check_prime(number)
end

puts prime_numbers.last

# prime = []

# def prime_number_10001(x)
#   if (x % x == 0) && (x % 2 == 0)
#     prime << x
#   end

#   if prime.count == 10001
#     puts prime
#   end
# end
