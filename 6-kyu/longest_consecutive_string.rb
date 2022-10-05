# You are given an array(list) strarr of strings and an integer k. Your task is to return the first longest string consisting of k consecutive strings taken in the array.

def longest_consec(strarr, k)
  return "" if k <= 0 || k >= strarr.count
  count = 0
  index = 0
  length = []
  strarr.each{ |a| length << a.length}
  length.each_with_index do |s, i|
    if length[i..(i+k-1)].sum > count
      count = length[i..(i+k-1)].sum
      index = i
    end
  end
  strarr[index..(index+k-1)].join
end
