# Once upon a time, on a way through the old wild mountainous west,…
# … a man was given directions to go from one point to another. The directions were "NORTH", "SOUTH", "WEST", "EAST". Clearly "NORTH" and "SOUTH" are opposite, "WEST" and "EAST" too.

# Going to one direction and coming back the opposite direction right away is a needless effort. Since this is the wild west, with dreadful weather and not much water, it's important to save yourself some energy, otherwise you might die of thirst!



# 🧑🏻‍💻 after trying to loop and count instances of each directions, I found the trick to use regex.
# You just try to find pairs of opposite directions and delete it in a while until there is none left.


def dirReduc(arr)
  s = arr.join(' ')
  while s =~ (/NORTH\s+SOUTH|SOUTH\s+NORTH/) || s =~ (/EAST\s+WEST|WEST\s+EAST/)
    s.gsub!(/NORTH\s+SOUTH|SOUTH\s+NORTH/, "")
    s.gsub!(/EAST\s+WEST|WEST\s+EAST/, "")
  end
  return s.split
end

