


def pentagonal(x)
  return ((x * ((3 * x) - 1)) / 2)
end

def find_pentagonal(x, array_penta)
  sum = 0
  0.upto(array_penta.length - 1) do |k|
    if x == array_penta[k]
      sum += 1
    end
  end
  sum == 1 ? (return true) : (return false)
end

sum_pentagonal = 0
difference_pentagonal = 0
# d = number.abs
d = []
pentagonal_number = []

1000.upto(3000) do |b|
  pentagonal_number << pentagonal(b)
end


1000.upto(2200) do |p|
  1000.upto(2200) do |q|
    difference_pentagonal = (pentagonal(p) - pentagonal(q)).abs
    sum_pentagonal = pentagonal(p) + pentagonal(q)
    if (find_pentagonal(difference_pentagonal, pentagonal_number) == true) && (find_pentagonal(sum_pentagonal, pentagonal_number) == true)
      d << difference_pentagonal
    end
  end
end

d.sort!.uniq!

puts d




