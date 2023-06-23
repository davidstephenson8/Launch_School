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