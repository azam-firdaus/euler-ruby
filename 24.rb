original = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
lexicographic = original.permutation.to_a

0.upto(8) do |k|
  print "#{lexicographic[1000000][k]} "
end
puts " "