def triangle(x)
  return ((x * (x + 1)) / 2) 
end

def pentagonal(x)
  return ((x * ((3 * x) - 1)) / 2)
end

def hexagonal(x)
  return (((2 * x) - 1) * x)
end


27600.upto(27700) do |j|
  31000.upto(32000) do |k|
    55300.upto(55400) do |l|
      if triangle(l) == pentagonal(k) && pentagonal(k) == hexagonal(j)
        puts "Answer ---> #{hexagonal(j)}"
      end
    end
  end
end