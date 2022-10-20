# Calculating with Functions

# This time we want to write calculations using functions and get the results. Let's have a look at some examples:

# seven(times(five)) # must return 35
# four(plus(nine)) # must return 13
# eight(minus(three)) # must return 5
# six(divided_by(two)) # must return 3
# Requirements:

# There must be a function for each number from 0 ("zero") to 9 ("nine")
# There must be a function for each of the following mathematical operations: plus, minus, times, divided_by
# Each calculation consist of exactly one operation and two numbers
# The most outer function represents the left operand, the most inner function represents the right operand
# Division should be integer division. For example, this should return 2, not 2.666666...:


def zero(a = nil)
  a.nil? ? 0 : calc(0,a[1].to_i,a[0])
end
def one(a = nil)
  a.nil? ? 1 : calc(1,a[1].to_i,a[0])
end
def two(a = nil)
  a.nil? ? 2 : calc(2,a[1].to_i,a[0])
end
def three(a = nil)
  a.nil? ? 3 : calc(3,a[1].to_i,a[0])
end
def four(a = nil)
  a.nil? ? 4 : calc(4,a[1].to_i,a[0])
end
def five(a = nil)
  a.nil? ? 5 : calc(5,a[1].to_i,a[0])
end
def six(a = nil)
  a.nil? ? 6 : calc(6,a[1].to_i,a[0])
end
def seven(a = nil)
  a.nil? ? 7 : calc(7,a[1].to_i,a[0])
end
def eight(a = nil)
  a.nil? ? 8 : calc(8,a[1].to_i,a[0])
end
def nine(a = nil)
  a.nil? ? 9 : calc(9,a[1].to_i,a[0])
end

def plus(x, y = nil)
  y.nil? ? "+#{x}" : x + y
end
def minus(x, y = nil)
  y.nil? ? "-#{x}" : x - y
end
def times(x, y = nil)
  y.nil? ? "*#{x}" : x * y

end
def divided_by(x, y = nil)
  y.nil? ? "/#{x}" : x / y
end

def calc (x, y, op)
  case op
    when "+" ; plus(x,y)
    when "-" ; minus(x,y)
    when "*" ; times(x,y)
    when "/" ; divided_by(x,y)
  end
end
