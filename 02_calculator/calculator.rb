	def add (x,y)
		x + y
	end
	def subtract (x,y)
		x - y
	end
	def sum (array)
		n = 0
		if array == []
			0
		else
		array.each {|a| n += a}
		n
		end
	end
	def multiply (array)
		n = 1
		if array == []
			0
		else
		array.each {|a| n *= a}
		n
		end
	end
	def divide (x,y)
		x.to_f / y.to_f
	end
	def power (x,y)
		x ** y
	end
	def factorial(n)
		i = 1
		array = [n]
		while n > 1
			n -= 1
			array.push n
		end
		array.each {|a| i *= a}
		if i == 0
			i = 1
		end
		i
	end
puts
puts "This program is a calculator emulator. Your options for
functions are ADD - to add two numbers, SUBTRACT - to subtract
the first number from the second, SUM - to add multiple numbers,
MULTIPLY - to multiply any amount of numbers together, DIVIDE - 
to divide the first number by the second number, POWER - to 
multiply the first number by the power of the second number,
FACTORIAL - all the numbers between that one and 1 multiplied"
inputs = ["add", "subtract", "sum", "multiply", "divide", "power", "factorial"]
input = "nothing"
until inputs.include?("#{input.downcase}") == true do
	puts
	print "What function would you like to do? "
	input = gets.chomp.downcase
end
numbers = []
x = nil
y = nil
n = nil
b = "nothing"
result = "The answer is: "
if input == "add" || input == "subtract" || input == "power"
	until x.is_a?(Fixnum) do
		puts
		print "Please enter the first number: "
		x = Integer(gets) rescue nil
	end
	until y.is_a?(Fixnum) do
		puts
		print "Please enter the second number: "
		y = Integer(gets) rescue nil
	end
	if input == "add"
		puts
		print result
		puts add(x,y)
	elsif input == "subtract"
		puts
		print result
		puts subtract(x,y)
	else input == "power"
		puts
		print result
		puts power(x,y)
	end
elsif input == "multiply" || input == "sum"
	puts
	puts "Enter as many numbers as you want to separately
	then enter '0' when you are finished."
	while b != nil
		until b.is_a?(Fixnum) do
			puts
			print "Please enter another number: "
			b = Integer(gets) rescue nil
		end
		if b == 0
			b = nil
		else
		numbers.push b
		b = "nothing"
		end
	end
	if input == "multiply"
		puts
		print result
		puts multiply(numbers)
	else input == "sum"
		puts
		print result
		puts sum(numbers)
	end
else input == "factorial"
	until n.is_a?(Fixnum) do
		puts
		print "Please enter a number: "
		n = Integer(gets) rescue nil
	end
	puts
	print result
	puts factorial(n)
end