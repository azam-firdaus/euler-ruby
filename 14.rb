def collatz(n)
  count = 1
  if n == 1
    count = 1
  else
    while n != 1
      if n % 2 == 0
        n = n / 2
        count = count + 1
      else
        n = (3 * n) + 1
        count = count + 1
      end
    end
  end
  return count
end

biggest = 1
small = 1
1000000.downto(50) do |i|
  small = collatz(i)
  if biggest > small
    biggest = biggest
  else
    biggest = small
  end
end

1000000.downto(50) do |k|
  if collatz(k) == biggest
    puts k
  end
end