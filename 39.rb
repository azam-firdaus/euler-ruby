a_array = []
b_array = []
c_array = []

for k in 0..400
  for j in 0..500
    for p in 0..500
      if((((k * k) + (j * j)) == (p * p) && k <= j && j < p))
        a_array << k
        b_array << j
        c_array << p
      end
    end
  end
end


value_p = []
sum = 0
0.upto(999) do |h|
    0.upto(a_array.length - 1) do |p|
    if (a_array[p] + b_array[p] + c_array[p]) == h
      puts "#{a_array[p]}\t+\t#{b_array[p]}\t+\t#{c_array[p]}\t=\t#{h}"
      sum = sum + 1
    end
  # puts "#{a_array[p]} - #{b_array[p]} - #{c_array[p]}"
  end
  value_p[h] = sum
  sum = 0
end

big = 0
0.upto(value_p.length - 1) do |d|
  # puts "#{d} ---> #{value_p[d]}"
  if big > value_p[d]
    big = big
  else
    big = value_p[d]
  end
end

puts
0.upto(999) do |y|
  if value_p[y] == big
    puts "Final answer ----> #{y}"
  end
end


