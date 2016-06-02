class Timer
	attr_accessor :time_string, :seconds
	def initialize
		@seconds = 0
		@number = nil
		@time_string = "00:00:00"
	end

	def seconds=(seconds)
		@seconds = seconds
		converter(@seconds)
	end

	def converter(seconds)
		@seconds = seconds.to_i
		hr = @seconds / 3600
		min = (@seconds % 3600) / 60
		sec = (@seconds % 3600) % 60
		hr = padded(hr)
		min = padded(min)
		sec = padded(sec)
		@time_string = "#{hr}:#{min}:#{sec}"
	end

	def padded (input)
		if input.to_s.length == 1
			@number = input.to_s.rjust(2, "0")
		elsif input.to_s.length == 2
			@number = input.to_s
		end
		@number
	end



end