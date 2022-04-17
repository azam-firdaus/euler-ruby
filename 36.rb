
sum = 0

0.upto(999999) do |k|
  if (k.to_s == k.to_s.reverse) && (("%b" % k) == ("%b" % k).reverse)
    sum = sum + k
    print "#{k}, "
  end
end

puts
puts "Final answer --->  #{sum}"