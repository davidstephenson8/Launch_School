def rotate_array(array)
  new_array = []
  array.each do |num|
    new_array << num
  end
  new_array.push(new_array.shift) 
end

#I need to consistently be able to change the string and then be able to go back and rotate the 
#integer again. So I need to have somewhere that gets changed every time we rotate that also
#can be pulled from every time we rotate. 

def rotate_rightmost_digits(integer, number_of_characters)
  subarray_to_rotate = integer.to_s.chars[-number_of_characters, number_of_characters]
  rotated_subarray = rotate_array(subarray_to_rotate)
  rest_of_array = integer.to_s.chars[0..-(number_of_characters+1)]
  rotated_array = rest_of_array + rotated_subarray
  rotated_array.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917