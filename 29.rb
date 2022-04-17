sequence_number = []
2.upto(100) do |a|
  2.upto(100) do |b|
    sequence_number << (a ** b)
  end
end
sequence_number.uniq!.sort!
puts sequence_number.length