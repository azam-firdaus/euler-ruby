def triangle(x)
  sum = 0
  x.downto(1) do |i|
    sum = sum + i
  end
  return sum
end
# 76576500
def divisor(z)
  yes = 0
  z.downto(1) do |k|
    if z % k == 0
      yes = yes + 1
    end
  end
  return yes
end

# final = []
12340.upto(12380) do |l|
  test = triangle(l)
  divised = divisor(test)
  if divised > 500
    puts test
  end
end

# puts divisor(76576500)

# def check_prime(upper_limit)
#   array_number = []
#   2.upto(upper_limit) do |j|
#     array_number << j
#   end

#   for i in 0..(array_number.length - 1)
#     2.upto(array_number.last) do |k|
#       array_number.delete(array_number[i]*k)
#     end
#   end
# end


