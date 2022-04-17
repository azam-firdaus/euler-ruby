
def permutation_circular(w)
  string = ""
  limit = w.to_s.length
  (limit + 1 ).times{ string << w.to_s }

  number_array = []

  0.upto(limit) do |k|
    if limit == 1
      number_array << string[k].to_i
    elsif limit == 2
      number_array << (string[k] + string[k+1]).to_i
    elsif limit == 3
      number_array << (string[k] + string[k+1] + string[k+2]).to_i
    elsif limit == 4
      number_array << (string[k] + string[k+1] + string[k+2] + string[k+3]).to_i
    elsif limit == 5
      number_array << (string[k] + string[k+1] + string[k+2] + string[k+3] + string[k+4]).to_i
    elsif limit == 6
      number_array << (string[k] + string[k+1] + string[k+2] + string[k+3] + string[k+4] + string[k+5]).to_i
    end
  end

  number_array.uniq!

  return number_array
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

# def check_cicular(f)
#   s = []
#   f_array = f.to_s.split('')
#   0.upto(f_array.length - 1) do |w|
#     s << f_array[w]
#   end

#   permutation_of_number_string = s.permutation.to_a
#   limit_loop = permutation_of_number_string.length
#   limit_loop_character = f_array.length
#   string_number = ""
#   permutation_of_number = []

#   0.upto(limit_loop-1) do |g|
#     0.upto(limit_loop_character-1) do |y|
#       string_number << permutation_of_number_string[g][y]
#     end
#     permutation_of_number[g] = string_number.to_i
#     string_number = ""
#   end

#   answer = 0

#   0.upto(limit_loop - 1) do |j|
#     prime_to_check =  permutation_of_number[j]
#     las_element = better_check_prime(prime_to_check)
#     answer_prime = las_element.last

#     if prime_to_check == answer_prime
#       answer = answer + 1
#     end
#   end

#   answer == permutation_of_number.length ? (return true) : (return false)
# end

def circular_number(x)

  number_array = permutation_circular(x)

  limit_loop = number_array.length
  answer = 0

  number_array.each do |number|
    if (number % 2 == 0 && number != 2) || (number % 5 == 0 && number != 5) || (number % 7 == 0 && number != 7) || (number % 3 == 0 && number != 3) || (number % 11 == 0 && number != 11) || (number % 13 == 0 && number != 13) || (number % 17 == 0 && number != 17) || (number % 31 == 0 && number != 31) || (number % 37 == 0 && number != 37) || (number % 71 == 0 && number != 71) || (number % 79 == 0 && number != 79) || (number % 97 == 0 && number != 97) || (number % 113 == 0 && number != 113)
      return false
    else
      last_element = better_check_prime(number).last

      if last_element == number
        answer = answer + 1
      end
    end
  end

  answer == number_array.length ? (return true) : (return false)

end



array_of_prime = better_check_prime(1000000)

limit_test = array_of_prime.length

circular_prime = []

array_of_prime.each do |prime|
  if circular_number(prime) == true
    circular_prime << prime
    print "#{prime}, "
  end
end

puts "Final answer ---> #{circular_prime.length}"

