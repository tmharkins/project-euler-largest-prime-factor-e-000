require 'prime'
def largest_prime_factor(input)
	largest_prime = 0
	(2...Math.sqrt(input)).each do |i|
		if is_a_prime?(i) && input_div_by_i?(input, i)
			if i > largest_prime
				largest_prime = i
			end
		end
	end
  return largest_prime
end

def is_a_prime?(i)
	if Prime.prime?(i)
		return true
	end
end

def input_div_by_i?(input, i)
	if input % i == 0
		return true
	end
end