class Squares
	attr_reader :num

	def initialize(number)
		@number = number
	end

	def square_of_sums
		@number.downto(1).reduce(:+)**2
	end

	def sum_of_squares
		@number.downto(1).map{|x| x**2}.reduce(:+)
	end

	def difference
		square_of_sums - sum_of_squares
	end
end
