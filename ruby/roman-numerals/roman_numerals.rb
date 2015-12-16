class Integer
	def to_roman
		output = ''
		numerals = ['M', 1000, 'D', 500, 'C', 100,
								'L', 50, 	 'X', 10,  'V', 5,   'I', 1]

		m = self
		numerals.each_with_index do |element, index|
			if index % 2 == 1
				next
			end

			currentNumeral = numerals[index+1]
			while m >= currentNumeral
				q, m = m.divmod(currentNumeral)
				if q == 4
					output += element
					output += numerals[index-2]
				else
					output += element * q
				end
			end

			if numerals[index+3]
				num = numerals[index+3]
			else
				num = 0
			end

			if m >= currentNumeral - num
				m -= currentNumeral*0.9
				output += numerals[index+4]
				output += element
			end
		end
		output
	end
end
