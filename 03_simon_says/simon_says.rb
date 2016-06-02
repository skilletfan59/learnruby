def echo (input)
	input
end
def shout (input)
	input.upcase
end
def repeat (input,n=2)
	((input + " ") * n).chomp(" ")
end
def start_of_word(input,n)
	input[0,n]
end
def first_word (input)
	input.split.first
end
def titleize(input)
	input.capitalize!
	input.split(" ").each do |word|
		unless word == "and" || word == "over" || word == "the"
			word.capitalize!
		end
	end.join(" ")
end