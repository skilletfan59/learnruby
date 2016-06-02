class XmlDocument

	def hello &block
		output = "\<hello/>"
		input = block.to_s
		hashout = "\<hello #{input}/>"
		if block.is_a?(Proc)
			hashout
		elsif block == nil
			output
		elsif block != nil
			puts "\<hello\>#{block.call}\</hello\>"
		end
	end
end