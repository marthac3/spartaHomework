require_relative 'square.rb'
require_relative 'rectangle.rb'
# Squares
square1 = Square.new(5)
square1.describe

# scale the square by a factor of 10
square1.scale(2)
square1.describe

rectangle1 = Rectangle.new(5, 10)
rectangle1.describe

rectangle1.scale(2)
rectangle1.describe