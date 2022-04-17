def count_power(x)
  number_array = x.to_s.split('').map(&:to_i)
  sum = 0
  
  number_array.each{ |number| sum = sum + (number ** 5) }

  sum == x ? (return true) : (return false)
end

all_power_digit = []
sum_all_power_digit = 0
2.upto(5000000) do |k|
  if count_power(k) == true
    all_power_digit << k
    puts k
  end
end

all_power_digit.each{ |answer| sum_all_power_digit = sum_all_power_digit + answer }
puts "Final answer ---> #{sum_all_power_digit}"
