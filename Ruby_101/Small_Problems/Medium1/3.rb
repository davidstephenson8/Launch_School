def rotate_array(array)
  new_array = []
  array.each do |num|
    new_array << num
  end
  new_array.push(new_array.shift) 
end

def rotate_rightmost_digits(integer, number_of_characters)
  subarray_to_rotate = integer.to_s.chars[-number_of_characters, number_of_characters]
  rotated_subarray = rotate_array(subarray_to_rotate)
  rest_of_array = integer.to_s.chars[0..-(number_of_characters+1)]
  rotated_array = rest_of_array + rotated_subarray
  rotated_array.join.to_i
end

def max_rotation(integer)
  digit_number = integer.to_s.size
  return integer if digit_number == 1
  digit_number.downto(2) do |n| 
    integer = rotate_rightmost_digits(integer, n)
  end
  integer
end

rotate_rightmost_digits(735291, 2)

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

