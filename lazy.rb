def prime?(n)
  return false if n < 2
  (2..n/2).each do |num|
    return false if n % num == 0
  end
  true
end

def palindrome?(n)
  s = n.to_s
  s == s.reverse
end

prime_number = -> (array_size) do
    1.upto(Float::INFINITY)
    .lazy
    .select{|n| prime?(n) && palindrome?(n)}
    .first(array_size.to_i)
end

input_size = gets.chomp()

p prime_number.call(input_size)