=begin
### Remove dups

Array has a `uniq` method that removes duplicates from an array. It
returns the unique elements in the order in which they first appeared:

                                                                 ```ruby
[1, 2, 1, 3, 3].uniq # => [1, 2, 3]
```

Write your own `uniq` method, called `my_uniq`; it should take in an
Array and return a new array. It should not call `uniq`.

    One special feature of Ruby classes is that they are *open*; we can
add new methods to existing classes. Here, add your `my_uniq` method
to Array:

       ```ruby
class Array
  def my_uniq
    # ...
  end
end
```

This is also called *monkey patching*, and it is often frowned upon
to, after-the-fact, add new methods to a class. However, it is
occasionally useful and interesting to try out.

=end

class Array #monkey-patching by defining a method in a class that is already built-in by ruby
  def my_uniq #defining my own uniq method and going to compare the results to ruby's built-in .uniq method below
    result = [] #set a blank array for the results
    self.each do |each| #Self here means Array ([any array]).my_uniq
      result << each unless result.include?(each)#push each number from the array in to results array unless it is already in results array
    end # there by preventing repeats
    result #return results
  end
end
x = ([2,3,4,5,6,7,3,9,2])
p x.my_uniq
p x.uniq
p x.my_uniq == [2,3,4,5,6,7,3,9,2].uniq
