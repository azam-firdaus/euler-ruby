
number_two = (2**1000).to_s
number_array = []
limit = number_two.length - 1
for i in 0..(limit)
  number_array[i] = number_two[i].to_i
end

sum = 0

for k in 0..limit
  sum = sum + number_array[k]
end

puts sum