=begin
Let's make a set of methods that will manipulate
a `Hash` as if it were a `Set`.  Like so:
```ruby
# Note these should be safe methods (no !)
set_add_el({}, :x) # => {:x => true}
set_add_el({:x => true}, :x) # => {:x => true} # This should automatically work if the first method worked
set_remove_el({:x => true}, :x) # => {}
set_list_els({:x => true, :y => true}) # => [:x, :y]
set_member?({:x => true}, :x) # => true
set_union({:x => true}, {:y => true}) # => {:x => true, :y => true}
set_intersection # I'm not going to tell you how the last two work
set_minus # Return all elements of the first array that are not in the second array, not vice versa
=end
def set_add_el(empty = {}, symbol)
  empty = {symbol  =>  true}
  puts empty
end
set_add_el({}, :x)            #{:x=>true} -- both return the same
set_add_el({:x => true}, :x)  #{:x=>true}
puts "******************************************"

def set_remove_el(empty = {}, symbol)
      puts empty.delete(symbol => true)
end
set_remove_el({:x => true}, :x) #returns {} but you can't see it!
puts "******************************************"

def set_list_els(hash)
  p hash.keys
end
set_list_els({:x => true, :y => true}) # => [:x, :y] returns all the keys provided
puts "******************************************"

def set_member?(empty={}, symbol)
    puts empty.has_key?(symbol)
end
set_member?({:x => true}, :x) # => true --> is symbol a key in the hash?
set_member?({:x => true}, :y) # => false
puts "******************************************"

def set_union(hash1, hash2)
    puts hash1.merge(hash2)
end
set_union({:x => true}, {:y => true}) # => {:x => true, :y => true} both merge in to the same hash
puts "******************************************"

def set_intersection(hash1, hash2)
    hash1.each{|key, value| puts key => value if hash2.has_key?(key)}
end
set_intersection({:x => true, :y => false, :z => true}, {:x => true, :y => false, :w => true})#{:x=>true} {:y=>false} same keys in both hashes
puts "******************************************"

def set_minus(hash1, hash2)
    hash1.each{|key, value| puts key => value unless hash2.has_key?(key)}
end
set_minus({:x => true, :y => false, :z => true}, {:x => true, :y => false, :w => true})#{:z=>true} -- is in hash1 but not in hash2
puts "******************************************"

#Martha has created a hash with letter symbols as keys to represent items that start with their keys. However, she realized everything
#is off by one letter.  Write a program `hash_correct` that takes this wrong hash and returns the correct one.
def hash_correct(wrong_hash)
             wrong_hash.each do |key, value|
             puts "#{value[0]}" => value
             end
end
hash_correct({ :a => "banana", :b => "cabbage", :c => "dental_floss", :d => "eel_sushi" })
=begin
{:b=>"banana"}  Must find out how to print out the format in one hash instead of separated ones.
{:c=>"cabbage"}
{:d=>"dental_floss"}
{:e=>"eel_sushi"}
=end
puts "******************************************"
def hash_letter_count(string)  #
  puts Hash[string.delete(' ').split('').group_by{ |c| c }.map{ |k, v| [k, v.size] }]
end
hash_letter_count("the cat in the hat")
#find out another way to get the same results and also find out how to sort the results according to the length of the values
#displaying botht the key value pair.