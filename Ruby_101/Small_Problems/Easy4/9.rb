INTEGERS = {1 => "1", 2 => "2", 3 => "3", 4 => "4", 5 => "5", 6 => "6", 
            7 => "7", 8 => "8", 9 => "9 ", 0 => "0",}

def integer_to_string(integer)
  string = "" unless integer == 0
  string = "0" if integer == 0
  until integer == 0
    string = INTEGERS[integer % 10] + string 
    p string
    integer = integer / 10
    p integer
  end

  p string
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'