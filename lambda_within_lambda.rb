combination = lambda{|n|
	lambda{|r|
		k=1
		r.times{|i|k=k*(n-i)/(i+1)}
		k
	}
}

n = 3
r = 2
nCr = combination.(n)
puts nCr.(r)