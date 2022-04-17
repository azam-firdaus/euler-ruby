require 'prime' 

def factors_of(number)
  number.prime_division.map(&:first)
end