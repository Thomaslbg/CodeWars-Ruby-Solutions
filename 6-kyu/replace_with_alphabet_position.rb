# Replace With Alphabet Position
# In this kata you are required to, given a string, replace every letter with its position in the alphabet.

# If anything in the text isn't a letter, ignore it and don't return it.

#🧑🏻‍💻 found the .bytes trick here: https://stackoverflow.com/questions/54325920/ruby-inbuilt-method-to-get-the-position-of-letter-in-the-alphabet-series

def alphabet_position(text)
  text.downcase.gsub(/\W|\d|_/, "").bytes.map{|b| b - 96}.join(" ")
end
