=begin
### Your own `to_s` method

In this exercise, I'd like you to write a method `num_to_s(num,
base)`, which will convert a number to a string in a different
base. For instance, `num_to_s(123, 10) == "123"` and `num_to_s(4, 2)
== 100`. It should work for bases up to 16 (hexadecimal).

You can also think of writing numbers in bases like this.
    123 in base 10 = 1*10^2 + 2*10^1 + 3*10^0

    8 in base 2 = 1000 = 2^3*1 + 2^2*0 + 2^1*0 + 2^0*0

    6 in base 2 = 110 = 2^2*1 + 2^1*1 + 2^0*0

    10 in base 3 = 101 = 1*3^2 + 0*3^1 + 1*3^0
=end

def num_to_s(num, base=10)
    blank = []
    i = 0
    while i < num.to_s.length
      blank << num / base**(i) % 10
      i += 1
    end
    p blank.reverse.join
end
num_to_s(123)

