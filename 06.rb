sum_square = 0
square_sum = 0
for i in 0..100
  sum_square = sum_square + (i * i)
  square_sum = square_sum + i
end

square_sum = square_sum * square_sum
puts square_sum - sum_square