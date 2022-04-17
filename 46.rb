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

def generate_squre(x)
  limit = x
  all_square = []
  (1..x).each do |k|
    all_square << 2 * (k ** 2)
  end
  # all_square.reject! {|x| x < 33}
  return all_square
end

def generate_composite(x)
  array_normal = []
  (33..x).each{ |k| array_normal << k if (k % 2 != 0)}
  array_prime = better_check_prime(x)

  # array_prime.reject! {|x| x < 33}

  array_prime.each do |g|
    array_normal.delete(g)
  end
  array_normal
end

array_prime = better_check_prime(6001)
array_composite =  generate_composite(6001)
array_square = generate_squre(55)



conjecture = []
array_composite.each do |j|
  array_prime.each do |k|
    array_square.each do |l|
      conjecture << (k + l)
    end
  end
  if (conjecture.include? j) == false
    puts j
  end
end

