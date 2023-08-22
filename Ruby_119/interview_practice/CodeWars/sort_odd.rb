# You will be given an array of numbers.
# You have to sort the odd numbers in ascending order, while leaving the even numbers at their original positions.


=begin
P
given an array of numbers, sort the odd numbers while leaving the even numbers where they are
E
[7, 1]
[1, 7]
[5, 8, 6, 3, 4]
[3, 8, 6, 5, 4]
D
A
generate an array of odd integers
  select the odd integers and then sort this selection. Initialize `sorted_odds` to this array
iterate through the original array and replace odd integers in order from the generated array of odd integers
  initialize `sorted_array` to an iteration through the original array, transforming elements as you go
    if the integer you get to is even, return that integer
    if th integer you get to is odd, remove the first element of the `sorted_odds` array and return that value
=end

def sort_odd(array)
  sorted_odds = array.select {|num| num.odd?}.sort
  sorted_array = array.map do |num|
    if num.even?
      num
    else
      sorted_odds.shift
    end
  end
  sorted_array
end

p sort_odd([7, 1])  ==  [1, 7]
p sort_odd([5, 8, 6, 3, 4])  ==  [3, 8, 6, 5, 4]
p sort_odd([9, 8, 7, 6, 5, 4, 3, 2, 1, 0])  ==  [1, 8, 3, 6, 5, 4, 7, 2, 9, 0]

