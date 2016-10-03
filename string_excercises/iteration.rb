#* Loop through all the numbers, stopping when you encounter a number
#that is (a) >250 and (b) divisible by 7. Print this number down!
(0..1000000).each do |num|
  if num > 250 && num % 7 == 0
    puts num
    break
  end
end
puts "**********************************************************"

#* Print out all the factors for each of the numbers 1 through 100.
def factor(number)
  i = 1
  while i <= number
    puts i if number % i == 0
    i += 1
  end
end
(1..100).each {|each| puts factor(each)}
puts "**********************************************************"

#* Write a method `substrings` that will take a `String` and return an
#array containing each of its substrings.
#Example output: `substrings("cat") => ["c", "ca", "cat", "a", "at", "t"]`

def sub_strings(string)
  blank = []
  idx = 0
  while idx < string.length
    length = 1
    while (idx + length) <= string.length
        blank << string.slice(idx, length)
        length += 1
    end
    idx += 1
  end
  return blank
end
p sub_strings("cat")
