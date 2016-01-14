require 'prime'

class LargestPrimeFactor
	def initialize(input)
		@input = input
		@largest_prime = 0
	end

  def number
		(2...Math.sqrt(@input)).each do |i|
			if is_a_prime?(i) && input_div_by_i?(@input, i)
				if i > @largest_prime
					@largest_prime = i
				end
			end
		end
		p @largest_prime
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
end