# Build Tower

# Build a pyramid-shaped tower, as an array/list of strings, given a positive integer number of floors. A tower block is represented with "*" character.

def towerBuilder(n)
  arr = []
  base_size = n * 2 - 1

  n.times do |f|
    floor_size = f * 2 + 1
    spaces = ((base_size - floor_size) /2)
    floor_string = "#{' ' * spaces}#{'*' * floor_size}#{' ' * spaces}"
    arr.push(floor_string)
  end

  arr
end

