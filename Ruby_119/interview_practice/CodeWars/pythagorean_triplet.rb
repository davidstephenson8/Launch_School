=begin
P
given 3 integers, check to see if they are a pythagorean triplet
E
3, 4, 5
true
1, 2, 3
false
D
array -> boolean
A
create an array with the three given integers
assign `sorted` to the array sorted into descending order
check to see if the elements squared at indicies 0 and 1 are equal to the element at index 2 squared in sorted
=end

def is_triplet(n1, n2, n3)
	array = [n1, n2, n3]
  sorted = array.sort
  sorted[0] ** 2 + sorted[1] ** 2 == sorted[2] ** 2
end

p is_triplet(3, 4, 5)
p is_triplet(1, 2, 3)
p is_triplet(13, 5, 12)