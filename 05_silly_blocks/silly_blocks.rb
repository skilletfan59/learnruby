def reverser &block
	yield.split(" ").each {|word| word.reverse!}.join(" ")
end

def adder n=1, &block
	result = block.call + n
end

def repeater n=3, &block
	n.times do
		block.call
	end
end