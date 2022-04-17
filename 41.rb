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

def pandigital(x)
  return x.to_s.split(//).sort.join
end

array_prime = better_check_prime(10000080)

array_prime.reject! {|x| x.to_s.length != 4 && x.to_s.length != 7}



array_prime.each do |k|
  for_pandi = ''
  limit = k.to_s.length
  value = pandigital(k)
  
  (1..limit).each{ |b| for_pandi += b.to_s }

  if value.length == limit && value == for_pandi
    puts k
  end
end




