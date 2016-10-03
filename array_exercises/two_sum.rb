=begin
### Two sum

Write a method that finds if an array of numbers has a pair that sums
to zero. Be careful of the case of zero; there need to be two zeroes
in the array to make a pair that sums to zero.
=end

def two_sums(nums)
  idx1 = 0 #first tracking variable
  while idx1 < nums.length #while variable is less than the nums.length
    idx2 = idx1 + 1 #set first variable + 1 as the second variable
    while idx2 < nums.length #while second variable is less than nums.length
      if nums[idx1] + nums[idx2] == 0 #if any number(nums[idx1]) + any other number(nums[idx2]) == 0 (there have to be 2 zeros to add to one zero)
        return true #true must be returned here otherwise all statements will return false.
      end
      idx2 += 1 # set count on second variable closing out the second while loop
    end
    idx1 += 1# set count on first variable closing out the first while loop
  end
   false # if none of the numbers add up to zero, than return false!
end

puts two_sums([1,2,3,2,5,-1])
puts two_sums([1,2,3,2,5,6])
puts two_sums([0,2,3,2,5,6,2])
puts two_sums([0,2,3,2,5,6,0])
