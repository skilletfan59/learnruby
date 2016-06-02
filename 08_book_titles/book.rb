class Book
	attr_accessor :title
	
	def title=(input = nil)
		articles = ["a", "the", "an", "and", "to", "in", "of"]
		@title = input.capitalize!.split.each do |word|
			unless articles.include?(word)
				word.capitalize!
			end
		end.join(" ")
	end

end