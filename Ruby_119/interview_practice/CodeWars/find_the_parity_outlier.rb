=begin
P
return the element in an array that doesnt match the others (even v odd)
E
D
A
  if the count of odds is greater than 1, select the even from the array, set it equal to result
    if not, select the odd from the array, set it equal to the result
  return result 
C
=end

def find_outlier(integers)
  if integers.count {|int| int.odd?} > 1
    result = integers.select {|int| int.even?}
  else
    result = integers.select{ |int| int.odd?}
  end
  result[0]
end

p find_outlier([2, 4, 0, 100, 4, 11, 2602, 36]) == 11
p find_outlier([160, 3, 1719, 19, 11, 13, -21]) == 160