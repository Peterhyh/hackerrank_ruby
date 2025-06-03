combination = -> (n) do
  -> (r) do
    k=1
    r.times {|i| k=k*(n-i)/(i+1)}
    k
  end
end

n = 3
r = 2
nCr = combination.(n)
puts nCr.(r)