class Rectangle
	attr_accessor :short_side, :long_side

	def initialize(short_side, long_side)
		self.short_side = short_side
		self.long_side = long_side
	end

	def calculate_area
		self.short_side * self.long_side
	end

	def calculate_perimeter
		(self.short_side * 2) + (self.long_side * 2)
	end

	def scale(num)
		self.short_side *= num
		self.long_side *= num
	end

	def describe
		puts "Rectangle Area: #{calculate_area} Perimeter: #{calculate_perimeter}"
	end
end