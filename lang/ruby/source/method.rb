def create_counter
	count  = 1
	test = Proc.new do
		count += 1
		p count
	end
	test.test
	return 	test
end
counter = create_counter
p counter.class
counter.call
counter.call
