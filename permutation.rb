def permutation_number(x)
  x.to_s.chars.to_a.permutation.map(&:join).map(&:to_i).uniq.sort
end