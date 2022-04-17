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

def sum_of(x)
  array_sum = []
  sum = 0
  array_sum << 0
  x.each do |prime|
    array_sum << sum += prime
  end
  return array_sum
end

def check(number)
  if (number % 2 == 0 && number != 2) || (number % 5 == 0 && number != 5) || (number % 7 == 0 && number != 7) || (number % 3 == 0 && number != 3) || (number % 11 == 0 && number != 11) || (number % 13 == 0 && number != 13) || (number % 17 == 0 && number != 17) || (number % 31 == 0 && number != 31) || (number % 37 == 0 && number != 37) || (number % 71 == 0 && number != 71) || (number % 79 == 0 && number != 79) || (number % 97 == 0 && number != 97) || (number % 113 == 0 && number != 113)
    return false
  else
    last_element = better_check_prime(number).last
    if last_element == number
      return true
    else
      return false
    end
  end
end


array_prime = better_check_prime(1000000)
array_sum_prime = sum_of(array_prime)


array_sum_prime.reject! {|x| x > 1000000}

consecutive = []
prime_consecutive = []
limit = array_sum_prime.length
# puts array_prime.length

(0..(limit - 2)).each do |k|
  ((k+1)..(limit - 1)).each do |l|
    is_prime = array_sum_prime[l] - array_sum_prime[k]
    if check(is_prime) == true
      consecutive << (l-k)
      prime_consecutive << is_prime
      puts "#{is_prime} ----> #{l-k}"
    end
  end
end

answer = consecutive.each_with_index.max
puts
puts "\n Final answer is ----> #{prime_consecutive[answer[1]]} with consecutive of #{answer[0]}"
puts




