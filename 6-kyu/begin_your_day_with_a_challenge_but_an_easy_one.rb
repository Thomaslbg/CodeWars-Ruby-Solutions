
# Begin your day with a challenge, but an easy one.

# There are no explanations. You have to create the code that gives the following results in Python, Ruby, and Haskell:

# one_two_three(0) == [0, 0]
# one_two_three(1) == [1, 1]
# one_two_three(2) == [2, 11]
# one_two_three(3) == [3, 111]
# one_two_three(19) == [991, 1111111111111111111]


def one_two_three(n)
  if n < 10
    nines = n
  else
    nines = ("9" * ( n / 9 ).floor)
    nines = "#{nines}#{(n.divmod(9))[1].to_s if n.divmod(9)[1] != 0}"
  end

  ones = ("1" * n).to_i

  [nines.to_i, ones]
end
