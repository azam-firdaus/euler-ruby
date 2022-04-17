# find the sum for even-valued terms
# fibonnacci 1 - 4mil
fibs_hash = Hash.new
 
def fibonnacci(number)
	if number < 2
		1
	else
		# check to see whether we've already computer fibonnacci(x)
		fibs_hash[number]
		fibonnacci(number-1) + fibonnacci(number-2)
	end
end

def better_fibonacci(n, cache = {})
  if n == 0 || n == 1
    return n
  end
  cache[n] ||= better_fibonacci(n-1, cache) + better_fibonacci(n-2, cache)
end


puts fibonnacci(2)
puts fibonnacci(3)
puts fibonnacci(10)
puts fibonnacci(-1)

fibs_hash[]
