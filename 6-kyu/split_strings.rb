# Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').

# Examples:

# * 'abc' =>  ['ab', 'c_']
# * 'abcdef' => ['ab', 'cd', 'ef']

#🧑🏻‍💻 One of the first 6 I did, there are much shorter methods but that works.

def solution(str)
  return [] if str == ""
  array = []
  stra = str.split("")

  actions = stra.count/2
  actions +=1 if stra.count.odd?

  actions.times do
    pair = [stra[0], stra[1]].join
    array.append(pair)
    2.times do
     stra.delete_at(0)
    end
  end

  if array[-1].length == 1
      array[-1] = [array[-1], "_"].join
  end

  return array
end
