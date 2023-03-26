def rotate_array(array)
  new_array = []
  array.each do |num|
    new_array << num
  end
  new_array.push(new_array.shift) 
end

p rotate_array([7, 3, 5, 2, 9, 1]) #== [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']


x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

# Further exploration

def rotate_string(string)
  string[1..-1] + string[0]
end

p rotate_string("swag city")
p rotate_string("This is something we're doing")

def rotate_integer(integer)
  string_integer = integer.to_s
  rotated_string_integer = string_integer[1..-1] + string_integer[0]
  rotated_string_integer.to_s
end

p rotate_integer(135)
p rotate_integer(9469469)
