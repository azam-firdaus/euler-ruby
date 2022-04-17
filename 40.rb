string_number = "0."
number = 0
until string_number.length > 1000010
  number += 1
  string_number = string_number + number.to_s
  # puts string_number
end

puts number
puts

final_answer = string_number[2].to_i * string_number[11].to_i * string_number[101].to_i * string_number[1001].to_i * string_number[10001].to_i * string_number[100001].to_i * string_number[1000001].to_i

puts "Final answer \t:#{final_answer}"