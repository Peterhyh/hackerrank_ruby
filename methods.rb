#Objective:
#Create a method "take" with 2 arguments. 
#First arguemnt will be an array. 
#Second argument will be the number of element you will take away from the array from left to right.
#The second argument will have a default value of 1
#This "take" method will return the array with the remaining elements

#len=1 is setting the length to 1
def take(arr, len=1)
  #shift will remove the number of elements from your array
  arr.shift(len)
  #returning the new array
  return arr
end

p take([-4, 5, 9, 0], 4)
p take(["a", "b", 56, /d+/], 1)
p take([121, 35, 523, 898], 0)