def pandigital(x, y)
  value = x.to_s + y.to_s + (x * y).to_s
  return value.to_s.split(//).sort.join 
end

answer = []

(1..100).each do |k|
  (100..2000).each do |l|
    value = pandigital(k, l)
    if (value.length == 9) && (value == '123456789')
      answer << (k * l)
      puts " #{k} x #{l} = #{k * l}"
    elsif (k * l).to_s.length > 9
        break
    end
  end
end
answer.uniq!

final = 0

answer.each{ |value| final += value }

puts
puts "Final answer --> #{final}"

