def divisor(x)
  value_divisor = []
  (x-1).downto(1) do |k|
    if x % k == 0
      value_divisor << k
    end
  end
  return value_divisor
end


numerator_array = []
denomenator_array = []
10.upto(99) do |k|
  10.upto(99) do |l|
    numerator = k.to_s[1].to_f
    denomenator = l.to_s[0].to_f

    other_numerator = k.to_s[0].to_f
    other_denomenator = l.to_s[1].to_f

    if numerator != 0 && denomenator != 0 && other_denomenator != 0 && other_numerator != 0
      if numerator == denomenator && k < l && other_numerator < other_denomenator 
        if (k.to_f / l.to_f) == ( other_numerator / other_denomenator)
          numerator_array << k
          denomenator_array << l
          puts "#{k}/#{l}  --->  #{other_numerator}/#{other_denomenator} = #{other_numerator / other_denomenator}"
        end
      end
    end
  end
end
puts

above = below = 1
numerator_array.each{ |number| above = above * number}
denomenator_array.each{ |number| below = below * number}

below_divisor = divisor(below)
above_divisor = divisor(above)

all = above_divisor & below_divisor

# puts "above_divisor: #{above_divisor.length},  below_divisor: #{below_divisor.length}"

# puts "all divisor: #{all.length}  ====  #{above_divisor.length + below_divisor.length}"

all.reject! {|x| x > above}

ultimate = []

all.each{ |one_divisor| ultimate << one_divisor if (above % one_divisor == 0) && (below % one_divisor == 0)}


puts "#{above / ultimate.first} / #{below / ultimate.first}"
puts "Final answer ----->   #{(below/ultimate.first)/(above/ultimate.first)}"


