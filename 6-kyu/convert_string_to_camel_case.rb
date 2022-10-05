#🧑🏻‍💻 One of the first 6 I did, there are much shorter methods but that works.

def to_camel_case(str)
  return "" if str == ""
  arr = str.split("")

  while arr.find_index("_")
    index = arr.find_index("_")
    arr[index + 1].upcase!
    arr.delete_at(index)
  end

  while arr.find_index("-")
    index = arr.find_index("-")
    arr[index + 1].upcase!
    arr.delete_at(index)
  end

  arr.join
end
