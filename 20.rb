def factorial(x)
  final = 1
  for i in 1..x
    final = final * i
  end
  return final
end

factorial_number = factorial(100).to_s
limit = factorial_number.length - 1

sum_all = 0
0.upto(limit) do |i|
  sum_all = sum_all + factorial_number[i].to_i
end

puts sum_all