def high_and_low(numbers)
  arr = []
 numbers.split(" ").each do | n |
   arr << n.to_i
  end
  "#{arr.max} #{arr.min}"
end
