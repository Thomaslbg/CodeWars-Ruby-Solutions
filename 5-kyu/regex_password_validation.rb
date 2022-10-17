# Regex Password Validation
# You need to write regex that will validate a password to make sure it meets the following criteria:

# At least six characters long
# contains a lowercase letter
# contains an uppercase letter
# contains a digit
# only contains alphanumeric characters (note that '_' is not alphanumeric)

#🧑🏻‍💻 I found the '?=.' assertion here :
# https://stackoverflow.com/questions/13747522/ruby-regex-for-two-words-present-in-a-string-in-any-order


regex=/^
      (?=.*[A-Z])
      (?=.*[a-z])
      (?=.*\d)
      [a-zA-Z\d]{6,}
      $/
