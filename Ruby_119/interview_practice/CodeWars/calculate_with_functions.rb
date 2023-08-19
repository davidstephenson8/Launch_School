=begin
P
given strings, write a function that executes the function described in the string
Rules:
funtion for each number 0-9
function for 4 basic mathematical operations
calculation has two numbers, one operator
A
each number should return either the string passed to it with its own number added or its own number by itself
each operation function should add a string representation to itself to the string
each number function should have programming that performs the calculation if after its own number is added, the string is 3
characters long
CALCULATION FUNCTION
if the string contains an operand, return the value of first and last elements changed to integers with that operation performed
  on them

=end

def zero(str = "")
  str = "0" + str
  if str.size > 1
    if str.include?("*")
      return str[0].to_i * str[2].to_i
    elsif srt.include("/")
      return str[0].to_i / str[2].to_i
    elsif srt.include("-")
      return str[0].to_i - str[2].to_i
    elsif srt.include("+")
      return str[0].to_i + str[2].to_i
    end
  end
  str
end
def one(str = "")
  str = "1" + str
  if str.size > 1
    if str.include?("*")
      return str[0].to_i * str[2].to_i
    elsif srt.include("/")
      return str[0].to_i / str[2].to_i
    elsif srt.include("-")
      return str[0].to_i - str[2].to_i
    elsif srt.include("+")
      return str[0].to_i + str[2].to_i
    end
  end
  str
end
def two(str = "")
  str = "2" + str
  if str.size > 1
    if str.include?("*")
      return str[0].to_i * str[2].to_i
    elsif srt.include("/")
      return str[0].to_i / str[2].to_i
    elsif srt.include("-")
      return str[0].to_i - str[2].to_i
    elsif srt.include("+")
      return str[0].to_i + str[2].to_i
    end
  end
  str
end
def three(str = "")
  str = "3" + str
  if str.size > 1
    if str.include?("*")
      return str[0].to_i * str[2].to_i
    elsif srt.include("/")
      return str[0].to_i / str[2].to_i
    elsif srt.include("-")
      return str[0].to_i - str[2].to_i
    elsif srt.include("+")
      return str[0].to_i + str[2].to_i
    end
  end
  str
end
def four(str = "")
  str = "4" + str
  if str.size > 1
    if str.include?("*")
      return str[0].to_i * str[2].to_i
    elsif srt.include("/")
      return str[0].to_i / str[2].to_i
    elsif srt.include("-")
      return str[0].to_i - str[2].to_i
    elsif srt.include("+")
      return str[0].to_i + str[2].to_i
    end
  end
  str
end
def five(str = "")
  str = "5" + str
  if str.size > 1
    if str.include?("*")
      return str[0].to_i * str[2].to_i
    elsif srt.include("/")
      return str[0].to_i / str[2].to_i
    elsif srt.include("-")
      return str[0].to_i - str[2].to_i
    elsif srt.include("+")
      return str[0].to_i + str[2].to_i
    end
  end
  str
end
def six(str = "")
  str = "6" + str
  if str.size > 1
    if str.include?("*")
      return str[0].to_i * str[2].to_i
    elsif srt.include("/")
      return str[0].to_i / str[2].to_i
    elsif srt.include("-")
      return str[0].to_i - str[2].to_i
    elsif srt.include("+")
      return str[0].to_i + str[2].to_i
    end
  end
  str
end
def seven(str = "")
  str = "7" + str
  if str.size > 1
    if str.include?("*")
      return str[0].to_i * str[2].to_i
    elsif srt.include("/")
      return str[0].to_i / str[2].to_i
    elsif srt.include("-")
      return str[0].to_i - str[2].to_i
    elsif srt.include("+")
      return str[0].to_i + str[2].to_i
    end
  end
  str
end
def eight(str = "")
  str = "8" + str
  if str.size > 1
    if str.include?("*")
      return str[0].to_i * str[2].to_i
    elsif srt.include("/")
      return str[0].to_i / str[2].to_i
    elsif srt.include("-")
      return str[0].to_i - str[2].to_i
    elsif srt.include("+")
      return str[0].to_i + str[2].to_i
    end
  end
  str
end
def nine(str = "")
  str = "9" + str
  if str.size > 1
    if str.include?("*")
      return str[0].to_i * str[2].to_i
    elsif srt.include("/")
      return str[0].to_i / str[2].to_i
    elsif srt.include("-")
      return str[0].to_i - str[2].to_i
    elsif srt.include("+")
      return str[0].to_i + str[2].to_i
    end
  end
  str
end
def plus(str)
  "+" + str
end
def minus(str)
  "-" + str
end
def times(str)
  "*" + str
end
def divided_by(str)
  "/" + str
end

p seven(times(five()))
p seven()