
a_array = Array.new
b_array = Array.new
c_array = Array.new

for k in 0..999
  for j in 0..999
    for p in 0..999
      if((((k * k) + (j * j)) == (p * p) && k < j && j < p))
        a_array << k
        b_array << j
        c_array << p
      end
    end
  end
end
for i in 0..(a_array.length - 1)
  if (a_array[i] + b_array[i] + c_array[i]) == 1000
    puts a_array[i] * b_array[i] * c_array[i]
  end
end