# Vowels Back

# You need to play around with the provided string (s).

# Move consonants forward 9 places through the alphabet. If they pass 'z', start again at 'a'.

# Move vowels back 5 places through the alphabet. If they pass 'a', start again at 'z'. For our Polish friends this kata does not count 'y' as a vowel.

# Exceptions:

# If the character is 'c' or 'o', move it back 1 place. For 'd' move it back 3, and for 'e', move it back 4.

# If a moved letter becomes 'c', 'o', 'd' or 'e', revert it back to it's original value.

# Provided string will always be lower case, won't be empty and will have no special characters.


def vowel_back st
  def not_code?
    self =~ /[^code]/
  end

  def replace(c, n)
    alph = ("a".."z").to_a
    alph[((alph.find_index(c)) + n) < alph.count ? alph.find_index(c) + n : ((alph.find_index(c)) + n) - alph.count]
  end

  st.chars.map do |c|
    case c
      when /[aiu]/
        replace(c, -5).not_code? ? replace(c, -5) : c
      when /[co]/
        replace(c, -1).not_code? ? replace(c, -1) : c
      when /d/
        replace(c, -3).not_code? ? replace(c, -3) : c
      when /e/
        replace(c, -4).not_code? ? replace(c, -4) : c
      when /[^aeioucode]/
        replace(c, 9).not_code? ? replace(c, 9) : c
    end
  end.join
end
