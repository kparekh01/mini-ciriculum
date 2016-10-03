=begin
### Caesar cipher

* Implement a [Caesar cipher](http://en.wikipedia.org/wiki/Caesar_cipher).
  Example: `caesar("hello", 3) # => "khoor"`
  * Assume the text is all lower case letters.
  * You'll probably want to map letters to numbers (so you can shift
    them). You can do this mapping yourself, but you may also want to
    use the [ASCII codes][wiki-ascii], which are accessible through
    `String#each_byte`.
    * You will probably also want to use `String#ord` and
      `Fixnum#chr`.
    * Important point: ASCII codes are all consecutive!
    * Lastly, be careful of the letters at the end of the alphabet, like
      `"z"`!
=end
def caesar(string, shift=0)
  alphabet = ("a".."z").to_a
    blank = string.each_char.map do |letter|
    alphabet.include?(letter) ? alphabet[(alphabet.index(letter) + shift) % alphabet.length] : letter
    end                             # % alphabet.length to move back to the beginning of the alphabet.
  puts blank.join
end

def caesar_decipher(string, shift=0)
  alphabet = ("a".."z").to_a
    blank = string.each_char.map do |letter|
      alphabet.include?(letter) ? alphabet[(alphabet.index(letter) - shift) % alphabet.length] : letter
    end
  puts blank.join
end
#string.chars.map { |char| alphabet[(alphabet.index(letter) - shift) % alphabet.length] }.join this was a one liner to the problem above, study it!
caesar("hello how are you?", 3)
caesar("hello")
caesar("hello", 4)
caesar("zebra", 3)
caesar("xray", 3)
puts "**************************************"
caesar_decipher("khoor krz duh brx?", 3)
caesar_decipher("hello")
caesar_decipher("lipps", 4)
caesar_decipher("cheud", 3)
caesar_decipher( "audb", 3)
