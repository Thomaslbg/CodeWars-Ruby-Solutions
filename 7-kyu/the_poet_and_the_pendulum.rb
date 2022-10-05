# Given an array/list [] of n integers , Arrange them in a way similar to the to-and-fro movement of a Pendulum

# The Smallest element of the list of integers , must come in center position of array/list.

# The Higher than smallest , goes to the right .
# The Next higher number goes to the left of minimum number and So on , in a to-and-fro manner similar to that of a Pendulum.


#🧑🏻‍💻 To be honest it found it quite hard for a 7
# I'm recreating an array for our pendulum results
# Then I iterate on the sorted value, if the number of values in my new array is odd I send it to the end of the array if even to the start

def pendulum values
  pendulum = []
  values.sort.each do |v|
    if pendulum.count.odd?
      pendulum.insert(-1, v)
    else
      pendulum.insert(0, v)
    end
  end
  return pendulum
end
