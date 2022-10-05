# Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.

# You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always be at least 2.
# The array will always contain letters in only one case.


#🧑🏻‍💻 found the .bytes trick here: https://stackoverflow.com/questions/54325920/ruby-inbuilt-method-to-get-the-position-of-letter-in-the-alphabet-series

def find_missing_letter(arr)
  num = arr.join.downcase.bytes.map{|b| b - 96}
  i = 1
  r = 0
  num.each do |e|
    if i <= (num.count-1)
      if (num[i] - e == 2)
        r = e + 1
        next
      end
      i +=1
    end
  end
  l = ('a'..'z').to_a[r-1]
  l = l.upcase if arr[0] == arr[0].upcase
  l
end
