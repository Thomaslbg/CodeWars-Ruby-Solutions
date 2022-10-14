# Basic Mathematical Operations

# Your task is to create a function that does four basic mathematical operations.

# The function should take three arguments - operation(string/char), value1(number), value2(number).
# The function should return result of numbers after applying the chosen operation.

# 🧑🏻‍💻 public_send method found here: https://stackoverflow.com/questions/20019668/ruby-string-to-operator


def basic_op(operator, value1, value2)
  value1.public_send operator, value2
end
