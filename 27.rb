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

array_prime = better_check_prime(100000)
n_array = []
a_array = []
b_array = []
(-999..999).each do |a|
  (-999..999).each do |b|
    n = -1
    drive_value = true
    until drive_value == false
      n += 1 
      prime_value = (n ** 2) + (a*n) + b
      drive_value = array_prime.include? prime_value
    end
    if n > 40
      puts "#{n}^2 + (#{a*n}) + (#{b}) ----- #{n}"
      n_array << n
      a_array << a
      b_array << b
    end
  end
end

answer = n_array.each_with_index.max

index_to_use = answer[1]

puts "Final answer ----> #{a_array[index_to_use]} x #{b_array[index_to_use]} = #{a_array[index_to_use] * b_array[index_to_use]} with the length of #{answer[0]}"

# (n ** 2) + an + b 