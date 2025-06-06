#
def square_of_sum (my_array, proc_square, proc_sum)
  sum = proc_sum.call(my_array)
  proc_square.call(sum)
end

proc_square_number = proc { |num| num**2 }
proc_sum_array     = proc {|arr| arr.sum}
my_array = [1, 2, 3]

puts square_of_sum(my_array, proc_square_number, proc_sum_array)