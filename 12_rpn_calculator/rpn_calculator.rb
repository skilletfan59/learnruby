class RPNCalculator
	attr_accessor :calculator, :value

	def initialize
		@calculator = []
		@error = Exception.new("calculator is empty")
	end

	def push(n)
		@calculator.push n
	end

	def plus
		if @calculator.slice(-2) == nil
			raise @error
		end
		@value = @calculator.pop + @calculator.pop
		@calculator.push @value
	end

	def minus
		if @calculator.slice(-2) == nil
			raise @error
		end
		@value = @calculator.slice!(-2) - @calculator.pop
		@calculator.push @value
	end

	def times
		if @calculator.slice(-2) == nil
			raise @error
		end
		@value = @calculator.pop * @calculator.pop
		@calculator.push @value
	end

	def divide
		if @calculator.slice(-2) == nil
			raise @error
		end
		@value = @calculator.slice!(-2).to_f / @calculator.pop.to_f
		@calculator.push @value
	end

	def tokens string
		@tokens = string.split.map do |token|
			if %w(+ - * /).include?(token)
				token.to_sym
			else
				token.to_i
			end
		end
	end

	def evaluate string
		@tokens = tokens(string)
		@tokens.each do |token|
			case token
			when :+
				plus
			when :-
				minus
			when :*
				times
			when :/
				divide
			else
				push(token)
			end
		end
		@calculator.last
	end	
end

