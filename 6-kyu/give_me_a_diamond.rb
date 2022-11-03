# Give me a Diamond


# Jamie is a programmer, and James' girlfriend. She likes diamonds, and wants a diamond string from James. Since James doesn't know how to make this happen, he needs your help.

# Task
# You need to return a string that looks like a diamond shape when printed on the screen, using asterisk (*) characters. Trailing spaces should be removed, and every line must be terminated with a newline character (\n).

# Return null/nil/None/... if the input is an even number or negative, as it is not possible to print a diamond of even or negative size.

def diamond(n)
  return nil if n < 0 || n.even?
  return "*\n" if n == 1
  arr = []
  ast = 1
  spaces = (n-1) / 2

  while (n - ast -1) > 0 do
    f = "#{' ' * spaces}#{'*' * ast}"
    arr.push(f)
    ast += 2
    spaces -= 1
  end

  arr.join("\n") + ("\n" + "*" * n + "\n") + arr.reverse.join("\n") + "\n"
end
