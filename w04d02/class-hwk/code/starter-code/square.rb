class Square
	attr_accessor :side_length

	def initialize(side_length)
		self.side_length = side_length
	end

	def calculate_area
		self.side_length ** 2
	end

	def calculate_perimeter
		self.side_length * 4
	end

	def scale(num)
		self.side_length *= num
	end

	def describe
		puts "Square Area: #{calculate_area} Perimeter: #{calculate_perimeter}"
	end
end