def factorial(x)
  sum = 1
  x.downto(1) do |i|
    sum = sum * i
  end
  return sum
end

n = 20

puts (factorial(2 * n) / (factorial(n) * factorial(n)))