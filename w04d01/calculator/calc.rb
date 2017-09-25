def calculator_type
	puts "Which calculator do you want to use? (b)asic or (a)dvanced or (bmi) or (t)rip calculator. Or (q)uit"
	calculator_type = gets.chomp
end

def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def multiply(num1, num2)
	num1 * num2
end

def divide(num1, num2)
	num1 / num2
end

def power(num1, num2)
	num1 ** num2
end

def squareroot(num1)
	Math.sqrt(num1)
end

def bmi(height, weight)
	(weight / height) / height
end

def basic_menu
	puts "Enter first number"
	num1 = gets.chomp.to_f
	puts "Choose: (a)ddition (s)ubtraction (m)ultiplication (d)ivision"
	calculation = gets.chomp
	puts "Enter second number"
	num2 = gets.chomp.to_f
	if calculation == "a"
		result = add(num1, num2)
	elsif calculation == "s"
		result = subtract(num1, num2)
	elsif calculation == "m"
		result = multiply(num1, num2)
	elsif calculation == "d"
		result = divide(num1, num2)
	else
		puts "invalid input"
	end
	puts result
end

def advanced_menu
	puts "Enter first number"
	num1 = gets.chomp.to_f
	puts "Choose: (p)ower (sq)uareroot"
	calculation = gets.chomp
	puts "Enter second number" if calculation != "sq"
	num2 = gets.chomp.to_f if calculation != "sq"
	if calculation == "p"
		result = power(num1, num2)
	elsif calculation == "sq"
		result = squareroot(num1)
	else
		puts "invalid input"
	end
	puts result
end

def bmi_menu
	puts "Do you want to use (i)mperial or (m)etric"
	type = gets.chomp
	if type == "m"
		puts "Enter height in m"
		height = gets.chomp.to_f
		puts "Enter weight in kg"
		weight = gets.chomp.to_f
	elsif type == "i"
		puts "Enter height in feet"
		temp_height = gets.chomp.to_f
		height = temp_height / 3.3
		puts "Enter weight in pounds"
		temp_weight = gets.chomp.to_f
		weight = temp_weight / 2.2
	else puts "invalid input"
	end
	puts bmi(height, weight)
end

def trip_calc
	puts "Enter distance in miles"
	distance = gets.chomp.to_f
	puts "Enter fuel efficiency in mpg"
	fuel = gets.chomp.to_f
	puts "Enter cost per gallon in £"
	fuelCost = gets.chomp.to_f
	puts "Enter speed in mph"
	speed = gets.chomp.to_f

	time = distance / speed
	gallons = distance / fuel
	cost = gallons * distance

	puts "Your trip will take #{time} hours and cost #{cost}"
end

def run
	calc = ""
	until calc == "q"
		calc = calculator_type
		if calc == "b"
			basic_menu
		elsif calc == "a"
			advanced_menu
		elsif calc == "bmi"
			bmi_menu
		elsif calc == "t"
			trip_calc
		elsif calc == "q"
			puts "quitting"
		else 
			puts "invalid input"
		end
	end
end

run