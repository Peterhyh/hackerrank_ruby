#Objective: Pass a block into a method that gets the factorial of the user's number.

def factorial(num)
  #(1..num) creates a range from 1 to num
  #.reduce takes a starting number and an opperator that is applied to all elements in the array
  result = (1..num).reduce(1, :*)
  #passing result to "value" below
  yield(result)
end


#Gets input from user and converting it into an integer
n = gets.to_i

#calls the factorial method and passing in the user's input "n".
#Receives the value back from the method to print
#prints value
factorial(n) do |value|
  puts value
end