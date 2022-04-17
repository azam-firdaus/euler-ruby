def pandigital(x)
  return x.to_s.split(//).sort.join
end

array_answer = []

(1..9999).each do |k|
  value = '0'
  dummy = 0
  until value.length > 9
    dummy += 1 
    value += (k * dummy).to_s
  end
  value = value.to_i
  answer = pandigital(value)
  if answer.length == 9 && answer == '123456789'
    array_answer << value
    puts value
  end
end

big = 1

array_answer.each do |final|
  if big > final
    big = big
  else
    big = final
  end
end

puts
puts "Final answer --->  #{big}"