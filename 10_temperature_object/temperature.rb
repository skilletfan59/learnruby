class Temperature

	def self.from_celsius degrees_celsius
		new(:c => degrees_celsius) #allows for input or calling of function with (:c => #)
	end

	def self.from_fahrenheit degrees_fahrenheit
		new(:f => degrees_fahrenheit) #allows for input or calling of function with (:f => #)
	end

	def initialize options
		@degrees_fahrenheit = options[:f] || options[:c] * (9.0/5.0) + 32
		#when new class is called no matter what number is input, it automatically stores at f
	end

	def in_fahrenheit
		@degrees_fahrenheit
	end

	def in_celsius
		(@degrees_fahrenheit - 32) * (5.0/9.0)
	end

	def ftoc(temp)
		(temp - 32) * 5 / 9.0
	end

	def ctof(temp)
		(temp * 9 / 5.0) + 32
	end
end

class Celsius < Temperature
	def initialize(c)
		super(:c => c)
	end
end
class Fahrenheit < Temperature
	def initialize(f)
		super(:f => f)
	end
end