# Sort the odd

# You will be given an array of numbers. You have to sort the odd numbers in ascending order while leaving the even numbers at their original positions.

def sort_array(source_array)
  odds = source_array.select(&:odd?).sort
  source_array.map do |n|
    n.even? ? n : odds.shift
  end
end
