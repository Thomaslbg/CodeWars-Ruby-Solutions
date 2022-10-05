def move_ten st
  #..
  arr = []
  alphabet = ("a".."z").to_a
  st.chars.each do | l |
    if (alphabet.find_index(l) + 10) > 25
      position = (alphabet.find_index(l) + 10) -26
    else
      position = (alphabet.find_index(l) + 10)
    end
    arr << alphabet[position]
  end
  arr.join
end
