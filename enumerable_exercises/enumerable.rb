#Write a method that takes a range of numbers from 1..100 and returns the perfect squares of each number
#less than 100.
range = (0..100)
range.each do |x|
  puts x ** 2 if x ** 2 < 100
end

puts "*****************************"

#Write a method using inject that will take numbers and return a product of all of the numbers provided ex: ([3,4,2]) == 24
def mutiply(nums)
  nums.inject(1){|product, number| product * number}
end

puts mutiply([3,4,2]) #24

puts "*****************************"

# Using any?, verify that the range of integers from 1 to 5 does include at least one odd number
range = (1..5)
puts range.any?{|x| x % 3 == 0}

# Write a method that takes an array of integers and returns an array with the array elements multiplied by two.
def times_two(numbers)
  numbers.map{|x| puts x * 2}
end
times_two([1,2,3,4,5,6,7,8])

puts "*****************************"
#Write a method that finds the median of a given array of integers. If the array has an odd number of integers, return the
#middle item from the sorted array. If the array has an even number of integers, return the average of the middle two
#items from the sorted array.

def median(numbers)
  sorted = numbers.sort
  count = numbers.length
  count % 2 != 0 ? sorted[(count / 2)] : (sorted[count/2] + sorted[(count/2) - 1]).to_f / 2.0
end

puts median([7, 9, 12, 13, 16])
puts median([7, 9, 12, 13, 16, 17])
puts median([7, 9, 12, 13, 16, 18, 20])

puts "*****************************"

#Create a method that takes in an `Array` of `String`s and uses `inject` to return the concatenation of the strings.
def concatenation(array)
  array.inject(:+)# or longer version array.inject(""){|result, string| result + string}
end

p concatenation(["Yay ", "for ", "strings!"])