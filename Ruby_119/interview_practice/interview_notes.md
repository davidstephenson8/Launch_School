- [Ways to get different permutations of things](#ways-to-get-different-permutations-of-things)
  - [put all unique substrings into an array](#put-all-unique-substrings-into-an-array)
  - [create an array with all possible pairs](#create-an-array-with-all-possible-pairs)
  - [create an array with all unique pairs](#create-an-array-with-all-unique-pairs)
- [random things to remember](#random-things-to-remember)

# Ways to get different permutations of things
## put all unique substrings into an array
```ruby
results = []
chars = string.chars
chars.each_with_index do |char, index|
  chars.each_with_index do |char2, index2|
    if index2 >= index1
      results << string[index..index2]
    end
  end
end
```
## create an array with all possible pairs
```ruby
results = []
chars = string.chars
chars.each_with_index do |char, index|
  chars.each_with_index do |char2, index2|
    results << [char, char2] if index != index2
  end
end
```
## create an array with all unique pairs
```ruby
results = []
chars = string.chars
chars.each_with_index do |char, index|
  chars.each_with_index do |char2, index2|
    results << [char, char2] if index >= index2
  end
end
```

# random things to remember
- there's an #fdiv method? apparently? Does float division instead of the modulo division we're more used to. Also aliased as #quo. 
- use #sort for comparing different strings. Works to see if different substrings are in alphabetical order or if words are angrams of each other, lots of interesting stuff. 
- each_cons(int) takes a rolling sample of an array. So you can get of all of the consecutive groups of 5. 
- Enumerable#chunk_while could be useful. It takes an enumerable and returns chunks of that enumerable based on a true/false return from the block passed to it. It's similar to Enumerable#slice_when except for that it breaks the chunk when the value passed to it is false, while ``slice_when`` breaks things up when the value passed to it is true
- #sort_by can be passed an array, it will sort by the first element in the array first, and then will sort by the second element in the array after that. So sorting first by character and then within each character would be possible with something like this
```ruby
"aAaaabBxXxxEeaA".chars.sort_by {|char| [char.downcase, char]}
# returns ["A", "A", "a", "a", "a", "a", "a", "B", "b", "E", "e", "X", "x", "x", "x"]
```
  - needs to be formatted in an array for ruby to recognize it
- #index method returns the index of the first element that matches what is passed to it
- the #scan method looks for the argument passed to it in the string and returns results in an array
```ruby
"potatopotatopotato".scan("potato")
#returns ["potato", "potato", "potato"]
