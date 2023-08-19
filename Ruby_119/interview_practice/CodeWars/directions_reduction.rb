=begin
Once upon a time, on a way through the old wild mountainous west,…

… a man was given directions to go from one point to another. The directions were "NORTH", "SOUTH", "WEST", "EAST". Clearly "NORTH" and "SOUTH" are opposite, "WEST" and "EAST" too.

Going to one direction and coming back the opposite direction right away is a needless effort. Since this is the wild west,
 with dreadful weather and not much water, it's important to save yourself some energy, otherwise you might die of thirst!

How I crossed a mountainous desert the smart way.

The directions given to the man are, for example, the following (depending on the language):

["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"].
or
{ "NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST" };
or
[North, South, South, East, West, North, West]
You can immediately see that going "NORTH" and immediately "SOUTH" is not reasonable, better stay to the same place! 
So the task is to give to the man a simplified version of the plan. A better plan in this case is simply:

["WEST"]
or
{ "WEST" }
or
[West]
Other examples:

In ["NORTH", "SOUTH", "EAST", "WEST"], the direction "NORTH" + "SOUTH" is going north and coming back right away.

The path becomes ["EAST", "WEST"], now "EAST" and "WEST" annihilate each other, therefore, the final result is [] 
(nil in Clojure).

In ["NORTH", "EAST", "WEST", "SOUTH", "WEST", "WEST"], "NORTH" and "SOUTH" are not directly opposite but they become 
directly opposite after the reduction of "EAST" and "WEST" so the whole path is reducible to ["WEST", "WEST"].

Task

Write a function dirReduc which will take an array of strings and returns an array of strings with the needless directions 
removed (W<->E or S<->N side by side).

The Haskell version takes a list of directions with data Direction = North | East | West | South.
The Clojure version returns nil when the path is reduced to nothing.
The Rust version takes a slice of enum Direction {North, East, West, South}.
See more examples in "Sample Tests:"

Notes

Not all paths can be made simpler. The path ["NORTH", "WEST", "SOUTH", "EAST"] is not reducible. 
"NORTH" and "WEST", "WEST" and "SOUTH", "SOUTH" and "EAST" are not directly opposite of each other 
and can't become such. Hence the result path is itself : ["NORTH", "WEST", "SOUTH", "EAST"].
if you want to translate, please ask before translating.

P
return a list of directions simplified as much as possible. NORTH and SOUTH cancel each other as well as EAST and WEST
Rules:
1. only cancel consecutive directions
2. return an empty array if all directions are cancelled

E
D
A
create a hash of corresponding cancelling directions
initialize end to 0
loop until 'end' = -1
iterate through the given array taking note of index
  if the next element in the array is the cancelling direction for the current element, replace both elements with nil and break
  the iteration
  if the index is the same as one less than the size of the array, reassign end to -1
return initial index with nils removed
=end

def dirReduc(arr)
  cancelling_directions = {"NORTH" => "SOUTH", "SOUTH" => "NORTH", "EAST" => "WEST", "WEST" => "EAST"}
  completed = false
  until completed == true
    arr.compact.each_with_index do |direction, index|
      if cancelling_directions[direction] == arr[index + 1]
        arr[index] = nil
        arr[index + 1] = nil
        arr = arr.compact
        break
      elsif index == arr.size - 1 || arr.empty?
        completed = true
        break
      end
    end
  end
  arr
end

p dirReduc(["NORTH", "EAST", "WEST", "SOUTH", "WEST", "WEST"])
p dirReduc(["WEST", "EAST", "WEST", "WEST", "WEST"])
p dirReduc(["SOUTH", "EAST", "WEST", "NORTH", "NORTH"])