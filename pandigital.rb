def pandigital(x)
  return x.to_s.split(//).sort.join == '123456789'
end