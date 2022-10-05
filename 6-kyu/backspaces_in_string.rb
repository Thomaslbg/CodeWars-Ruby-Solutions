# Assume "#" is like a backspace in string. This means that string "a#bc#d" actually is "bd"

# Your task is to process a string with "#" symbols.

# Examples
# "abc#d##c"      ==>  "ac"
# "abc##d######"  ==>  ""
# "#######"       ==>  ""
# ""              ==>  ""


def clean_string(string)
  while string.include?("#")
    string = string.sub(/.#/, "")
    string = string.gsub(/\A#/,"")
  end
  string
end
