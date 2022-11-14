# String incrementer

# Your job is to write a function which increments a string, to create a new string.

# If the string already ends with a number, the number should be incremented by 1.
# If the string does not end with a number. the number 1 should be appended to the new string.
# Examples:

# foo -> foo1

# foobar23 -> foobar24

# foo0042 -> foo0043

# foo9 -> foo10

# foo099 -> foo100

# Attention: If the number has leading zeros the amount of digits should be considered.

def increment_string(input)
  return "1" if input == ""
  return "#{input}1" if input[-1] =~ /\D/

  arr = input.scan(/\A((\D+)?)((0+)?)(\d+)\z/)[0]

  "#{arr[0]}#{(arr[4].to_i + 1).to_s.length == arr[4].length && arr[2] != nil ? arr[2] : arr[2][0..-2]}#{(arr[4].to_i + 1).to_s}"

end
