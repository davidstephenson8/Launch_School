=begin
P
given an nxn array, return a single array with elements arranged from outermost elements to innermost elements
input - 2D array
output - array of elements rearranged 
E
A
create empty array snail
square is the original array's size squared
until the size of snail is the same as square, repeat these steps
add first array to snail, delete it
destructively add all of the last values of each subarray in array to snail
add the last array to snail in reverse order. Delete it
destructively add all of the first values of each subarray in array to snail
=end

def snail(array)
  snail = []
  square = array.size ** 2
  loop do
    array[0].each do |value|
      snail << value 
    end
    array.delete_at(0)
    break if array.empty?
    array.each do |subarray|
      snail << subarray.pop
    end
    array[-1].reverse.each do |value|
      snail << value
    end
    array.delete_at(-1)
    break if array.empty?
    array.reverse.each do |subarray|
      snail << subarray.shift
    end
  end
  snail
end

p snail([[1,2,3],[4,5,6],[7,8,9]])
