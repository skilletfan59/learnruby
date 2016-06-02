class Dictionary
	attr_accessor :entries

	def initialize
		@entries = {}
	end

	def add entry
		if entry.is_a?(Hash)
			entry.each {|key, value| @entries[key] = value}
		else
			@entries[entry] = nil
		end
	end

	def keywords
		@entries.keys.sort
	end

	def include?(key)
		@entries.include?(key)
	end

	def find input
		@entries.delete_if {|key, value| key.include?(input) == false}
		@entries
	end

	def printable
		out_string = ""
		keys = keywords
		keys.each {|key| out_string += ( "\[#{key}\] \"#{@entries[key]}\"\n")}
		out_string.chomp
	end

end