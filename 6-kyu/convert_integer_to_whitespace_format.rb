# Story
# Hereinafter, [space] refers to " ", [tab] refers to "\t", and [LF] refers to "\n" for illustrative purposes. This does not mean that you can use these placeholders in your solution.

# In esoteric language called Whitespace, numbers are represented in the following format:

# first character represents the sign: [space] for plus, [tab] for minus;
# characters after that are the binary representation of the absolute value of the number, with [space] for 0, [tab] for 1, the rightmost bit is the least significand bit, and no leading zero bits.
# the binary representation is immediately followed by [LF].


#🧑🏻‍💻 Found the way to convert interger to binary here:
# https://stackoverflow.com/questions/2339695/how-to-convert-a-string-or-integer-to-binary-in-ruby
# was curious about how binary worked and found this great article:
# https://www.techtarget.com/whatis/definition/binary#:~:text=In%20mathematics%20and%20in%20computing,unit%20(CPU)%20and%20RAM.

def whitespace_number(n)
  ((n > 0 ? " " : "") + n.to_s(2).gsub(/0/,' ').gsub(/[-1]/, "\t") + "\n")
end
