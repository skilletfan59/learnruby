def measure n=1, &block
	start_time = Time.now
	n.times do
		block.call
	end
	(Time.now - start_time) / n
end