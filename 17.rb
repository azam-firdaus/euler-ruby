#incomplete


def first_ten(x)
  x = 9
  sum_below_ten = 0
  1.upto(x) do |k|
    if k == 1
      sum_below_ten = sum_below_ten + "one".length
    elsif k == 2
      sum_below_ten = sum_below_ten + "two".length
    elsif k == 3
      sum_below_ten = sum_below_ten + "three".length
    elsif k == 4
      sum_below_ten = sum_below_ten + "four".length
    elsif k == 5
      sum_below_ten = sum_below_ten + "five".length
    elsif k == 6
      sum_below_ten = sum_below_ten + "six".length
    elsif k == 7
      sum_below_ten = sum_below_ten + "seven".length
    elsif k == 8
      sum_below_ten = sum_below_ten + "eight".length
    elsif k == 9
      sum_below_ten = sum_below_ten + "nine".length
    end
  end
  return sum_below_ten
end

def between_twenty(y)
  y = 20
  sum_between_twenty = 0
  10.upto(y) do |m|
    if m == 10
      sum_between_twenty = sum_between_twenty + "ten".length
    elsif m == 11
      sum_between_twenty = sum_between_twenty + "eleven".length
    elsif m == 12
      sum_between_twenty = sum_between_twenty + "twelve".length
    elsif m == 13
      sum_between_twenty = sum_between_twenty + "thirteen".length
    elsif m == 14
      sum_between_twenty = sum_between_twenty + "fourteen".length
    elsif m == 15
      sum_between_twenty = sum_between_twenty + "fifteen".length
    elsif m == 16
      sum_between_twenty = sum_between_twenty + "sxteen".length
    elsif m == 17
      sum_between_twenty = sum_between_twenty + "seventeen".length
    elsif m == 18
      sum_between_twenty = sum_between_twenty + "eightteen".length
    elsif m == 19
      sum_between_twenty = sum_between_twenty + "nineteen".length
    end
  end
  return sum_between_twenty
end

def tens(k)
  k = 99
  sum_of_tens = 0
  20.upto(k) do |m|
    if m == 20
      sum_of_tens = sum_of_tens + ("twenty".length * 10) + first_ten(9)
    elsif m == 30
      sum_of_tens = sum_of_tens + ("thirty".length * 10) + first_ten(9)
    elsif m == 40
      sum_of_tens = sum_of_tens + ("forty".length * 10) + first_ten(9)
    elsif m == 50
      sum_of_tens = sum_of_tens + ("fifty".length * 10) + first_ten(9)
    elsif m == 60
      sum_of_tens = sum_of_tens + ("sixty".length * 10) + first_ten(9)
    elsif m == 70
      sum_of_tens = sum_of_tens + ("seventy".length * 10) + first_ten(9)
    elsif m == 80
      sum_of_tens = sum_of_tens + ("eighty".length * 10) + first_ten(9)
    elsif m == 90
      sum_of_tens = sum_of_tens + ("ninety".length * 10) + first_ten(9)
    end         
  end
  return sum_of_tens + between_twenty(2) + first_ten(2)
  # return 854
end

def hundreds(w)
  w = 901
  sum_of_hundreds = 0
  100.upto(w) do |p|
    if p == 100
      sum_of_hundreds = sum_of_hundreds + ("onehundredand".length * 100 ) + tens(99) 
    elsif p == 200
      sum_of_hundreds = sum_of_hundreds + ("twohundredand".length * 100)  + tens(99)
    elsif p == 300
      sum_of_hundreds = sum_of_hundreds + ("threehundredand".length * 100)  + tens(99)
    elsif p == 400
      sum_of_hundreds = sum_of_hundreds + ("fourhundredand".length * 100)  + tens(99)
    elsif p == 500
      sum_of_hundreds = sum_of_hundreds + ("fivehundredand".length * 100)  + tens(99)
    elsif p == 600
      sum_of_hundreds = sum_of_hundreds + ("sixhundredand".length * 100)  + tens(99)
    elsif p == 700
      sum_of_hundreds = sum_of_hundreds + ("sevenhundredand".length * 100)  + tens(99)
    elsif p == 800
      sum_of_hundreds = sum_of_hundreds + ("eighthundredand".length * 100)  + tens(99)
    elsif p == 900
      sum_of_hundreds = sum_of_hundreds + ("ninehundredand".length * 100)  + tens(99)
    end             
  end
  return sum_of_hundreds - ("and".length * 9)
end

puts "onethousand".length + hundreds(3) + tens(3)
