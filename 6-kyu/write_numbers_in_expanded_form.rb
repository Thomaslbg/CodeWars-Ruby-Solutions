# Write Number in Expanded Form

# Write Number in Expanded Form
# You will be given a number and you will need to return it as a string in Expanded Form. For example:

# expanded_form(12); # Should return '10 + 2'
# expanded_form(42); # Should return '40 + 2'
# expanded_form(70304); # Should return '70000 + 300 + 4'
# NOTE: All numbers will be whole numbers greater than 0.


def expanded_form(num)
  count = num.to_s.length
  num.to_s
     .chars
     .each_with_index
     .map { |e, index| e == "0" ? nil : e + "0" * (count - index - 1) }
     .compact
     .join(" + ")
end
