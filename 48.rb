
sum = 0
(1..1000).each do |k|
  sum += (k ** k)
end

limit = sum.to_s.length
puts sum.to_s[(limit-11)..-1].to_i
