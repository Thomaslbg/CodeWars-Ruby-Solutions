# Complete the function that accepts a string parameter, and reverses each word in the string. All spaces in the string should be retained.

# Examples
# "This is an example!" ==> "sihT si na !elpmaxe"
# "double  spaces"      ==> "elbuod  secaps"

def reverse_words(str)
  return str.split("  ").map(&:reverse).join("  ") if str =~ /\s{2}/
  return str.split(" ").map(&:reverse).join(" ")
end
