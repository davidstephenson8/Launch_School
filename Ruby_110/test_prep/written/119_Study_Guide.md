- [String and Array operations: indexing, range indexing (slicing), negative indexes, assigning elements](#string-and-array-operations-indexing-range-indexing-slicing-negative-indexes-assigning-elements)
  - [indexing](#indexing)
  - [range indexing (slicing)](#range-indexing-slicing)
  - [negative indicies](#negative-indicies)
  - [assigning elements](#assigning-elements)
- [Hash operations: indexing, string and symbol keys](#hash-operations-indexing-string-and-symbol-keys)
- [String methods: chars, concat, count, downcase, downcase!, freeze, include?, replace, reverse, reverse!, size, slice, slice!, split, strip, strip!, upcase, upcase!, upto](#string-methods-chars-concat-count-downcase-downcase-freeze-include-replace-reverse-reverse-size-slice-slice-split-strip-strip-upcase-upcase-upto)
  - [``String#chars``](#stringchars)
  - [``String#concat``](#stringconcat)
  - [``String#count``](#stringcount)
  - [``String#downcase(!)``](#stringdowncase)
  - [``String#freeze``](#stringfreeze)
  - [``String#include?``](#stringinclude)
  - [``String#replace``](#stringreplace)
  - [``String#reverse(!)``](#stringreverse)
  - [``String#size``](#stringsize)
  - [``String#slice(!)``](#stringslice)
  - [``String#split``](#stringsplit)
  - [``String#strip(!)``](#stringstrip)
  - [``String#upcase(!)``](#stringupcase)
  - [``String#upto``](#stringupto)
- [Array methods: all?, any?, each, each\_with\_index, each\_with\_object, fetch, first, include?, join, last, map, map!, partition, pop, push, reverse, reverse!, select, select!, shift, slice, slice!, sort, sort!, unshift](#array-methods-all-any-each-each_with_index-each_with_object-fetch-first-include-join-last-map-map-partition-pop-push-reverse-reverse-select-select-shift-slice-slice-sort-sort-unshift)
  - [``Array#all?``](#arrayall)
  - [``Array#any?``](#arrayany)
  - [``Array#each``](#arrayeach)
  - [``Array#each_with_index``](#arrayeach_with_index)
  - [``Array#each_with_object``](#arrayeach_with_object)
  - [``Array#fetch``](#arrayfetch)
  - [``Array#first``](#arrayfirst)
  - [``Array#include?``](#arrayinclude)
  - [``Array#join``](#arrayjoin)
  - [``Array#last``](#arraylast)
  - [``Array#map(!)``](#arraymap)
  - [``Array#partition``](#arraypartition)
  - [``Array#pop``](#arraypop)
  - [``Array#push``](#arraypush)
  - [``Array#reverse(!)``](#arrayreverse)
  - [``Array#select(!)``](#arrayselect)
  - [``Array#shift``](#arrayshift)
  - [``Array#slice(!)``](#arrayslice)
  - [``Array#sort(!)``](#arraysort)
  - [``Array#unshift``](#arrayunshift)
- [Hash methods: all?, any?, each\_key, each\_value, empty?, include?, key, key?, keys, map, select, select!, value?, values](#hash-methods-all-any-each_key-each_value-empty-include-key-key-keys-map-select-select-value-values)
  - [``Hash#all?``](#hashall)
  - [``Hash#any?``](#hashany)
  - [``Hash#each_value``](#hasheach_value)
  - [``Hash#empty?``](#hashempty)
  - [``Hash#include?``](#hashinclude)
  - [``Hash#key``](#hashkey)
  - [``Hash#key(?)``](#hashkey-1)
  - [``Hash#keys``](#hashkeys)
  - [``Hash#map``](#hashmap)
  - [``Hash#select(!)``](#hashselect)
  - [``Hash#value?``](#hashvalue)
  - [``Hash#values``](#hashvalues)
- [iteration, break and next](#iteration-break-and-next)
  - [``break``](#break)
  - [``next``](#next)
- [selection and transformation](#selection-and-transformation)
- [nested data structures and nested iteration](#nested-data-structures-and-nested-iteration)
  - [nested data structures](#nested-data-structures)
- [shallow copy and deep copy](#shallow-copy-and-deep-copy)
  - [shallow copy](#shallow-copy)
  - [deep copy](#deep-copy)
- [method chaining](#method-chaining)


# String and Array operations: indexing, range indexing (slicing), negative indexes, assigning elements
## indexing

[Source](https://launchschool.com/lessons/6a5eccc0/assignments/17756d47)

- indicies represent each character in the string or each element of the array. They are numbered starting from 0. 

```ruby
["a", "b", "c", "d"]

# In this array, string object "a" is at index 0, the string object "b" at index 1 and so forth.
```  

## range indexing (slicing)
  - Range indexing is another way to return characters from a string. It's actually an alternative syntax to use the String#slice method. 
```ruby
string = "John Stockton sends the Utah Jazz to the NBA finals"

string[2, 2] # returns "hn"
string[24, 9] # returns "Utah Jazz"
```
  - the first number in range indexing determines the index you start on, the second determines the number of characters that are returned by the method.  
## negative indicies
  - negative indices are counted from the end of the string. So -1 represents the last character in a string, -2 represents the second to last and so on
## assigning elements
  - typically use #[]= method
# Hash operations: indexing, string and symbol keys
- indexing
  - don't really have strict indexing with hashes. Hashes with equivalent key value pairs in any order are considered to be equivalent
```ruby
{one: 1, two: 2, three: 3} == {three: 3, two: 2, one: 1} #returns true
```
- string keys
- symbol keys
# String methods: chars, concat, count, downcase, downcase!, freeze, include?, replace, reverse, reverse!, size, slice, slice!, split, strip, strip!, upcase, upcase!, upto
## ``String#chars``
  - this method splits the string into its component characters and returns an array with each separate character in the string as an element in the array. 
  - ``"swag"`` becomes ``["s", "w", "a", "g"]``
## ``String#concat``
  - this method combines two strings together. This method is mutating, so the object it's called on is modified to be the concatenation of the two strings
## ``String#count``
  - this method returns a count of the characters passed in via the argument. It behaves in an interesting way, though. 
  ```ruby
  string = "The quick brown fox jumps over a dog but not any specific dog really"
  string.count("t") # returns 2, as expected
  string.count("og") # you might think that it'd look for this specific substring, which would return 2. But it actually returns 8, the total that each character appears in the string.
  string.count("abcdef", "efgh") #returns 6, which is the intersection of the two strings. ("ef") 
  ```
## ``String#downcase(!)``
  - returns a new string with all of the characters lowercase if there's no bang (!) at the end. The method mutates if the bang is at the end. 
  ``` ruby
  string = "Is ThIs UpPeRcAsE or lOwErCaSe"
  string.downcase #=> "is this uppercase or lowercase"
  string.downcase!.object_id == string.object_id #returns true
  string.downcase.object_id == string.object_id #returns false
  ```
## ``String#freeze``
  - prevents string from being modified. If a method is called on the string that would modify it ruby throws an error called, conveniently, ``FrozenError``. 
## ``String#include?``
  - returns true or false depending on if the string contains the substring passed in as an argument or not.
  ```ruby
  string = "this is a string"
  string.include("i") #returns true
  string.include("y") #returns false
  string.include("is") #returns true
  string.include("at") #returns false (not like count where it looks for each individual character, looks for the substring)
  ```
## ``String#replace``
  - replaces the contents of the original string with the argument
  ```ruby
  string = "swaggy p"
  string.replace("lol bye")
  string # returns "lol bye"
  ```
## ``String#reverse(!)``
- returns either a new string with the characters reversed, or mutates the original string and reverses the characters. 
  ```ruby
  string = "abcde"
  string.reverse == "edcba" #returns true
  string == "abcde" # true
  string.reverse! == "edcba" #returns true
  string == "edcba" # returns true
  ```
## ``String#size``
  - returns the number of characters in the string
  - alias for length
## ``String#slice(!)``
  - returns a substring starting at the index specified by the first argument and the length of the second argument. 
  - ``slice(!)`` mutates the string it's called on
## ``String#split``
  - separates the substring at the character matching the first argument and returns an array of the substrings. Default argument is ``" "``. 
```ruby
string = "this is a string"
string.split # returns ["this", "is", "a", "string"]
```
  - can take a second argument that determines the number of substrings returned
```ruby
string.split(" ", 2) # returns ["this", "is a string"]
string.split()   
```
## ``String#strip(!)``
  - removes all whitespace. 
## ``String#upcase(!)``
  - returns string with all characters uppercase instead
## ``String#upto``
  - iterates up to an argument from the integer that the method is called on
# Array methods: all?, any?, each, each_with_index, each_with_object, fetch, first, include?, join, last, map, map!, partition, pop, push, reverse, reverse!, select, select!, shift, slice, slice!, sort, sort!, unshift
## ``Array#all?``
  - can be passed without an argument, with an argument, or with a block
  - with no argument returns true if all elements in the array are truthy
  - with an argument it returns true if obj.=== every element (I don't fully understand this. It seems like it's obj== element but more complicated)
  - with a block, returns true if every object returns truthy values
  ```ruby
  [0, 1, :foo].all? # => true
  [0, nil, 2].all? # => false
  [].all? # => true

  [0, 1, 2].all? { |element| element < 3 } # => true
  [0, 1, 2].all? { |element| element < 2 } # => false

  ['food', 'fool', 'foot'].all?(/foo/) # => true
  ['food', 'drink'].all?(/bar/) # => false
  [].all?(/foo/) # => true
  [0, 0, 0].all?(0) # => true
  [0, 1, 2].all?(1) # => false
  ```
## ``Array#any?``
  - similar to Array#all? but instead of checking to see if each element matches the criteria, returns true if any of the elements of the array are truthy (no argument) return a truthy value (when passed to block) or are === argument (when passed an argument)
  ```ruby
  [nil, 0, false].any? # => true
  [nil, false].any? # => false
  [].any? # => false
  ['food', 'drink'].any?(/foo/) # => true
  ['food', 'drink'].any?(/bar/) # => false
  [].any?(/foo/) # => false
  [0, 1, 2].any?(1) # => true
  [0, 1, 2].any?(3) # => false
  [0, 1, 2].any? {|element| element > 1 } # => true
  [0, 1, 2].any? {|element| element > 2 } # => false 
  ```
## ``Array#each``
  - iterates over array elements
  ```ruby
  a = [:foo, 'bar', 2]
  a.each {|element|  puts "#{element.class} #{element}" }
  #this is the output
  Symbol foo
  String bar
  Integer 2
  ```
## ``Array#each_with_index``
  - calls the block with each element and index. Returns self. Kind of technically Enumerator#each_with_index
  ```ruby
  a = []
  h = {foo: 0, bar: 1, baz: 2}
  h.each_with_index {|element, i| a.push([i, element]) }
  # => {:foo=>0, :bar=>1, :baz=>2}
  a # => [[0, [:foo, 0]], [1, [:bar, 1]], [2, [:baz, 2]]]
  ```
## ``Array#each_with_object``
  - calls the block with each element and an object specified as an argument.
  ```ruby
  (1..4).each_with_object([]) {|i, a| a.push(i**2) }
  # => [1, 4, 9, 16]

  {foo: 0, bar: 1, baz: 2}.each_with_object({}) {|(k, v), h| h[v] = k }
  # => {0=>:foo, 1=>:bar, 2=>:baz}
  ```
## ``Array#fetch``
  - returns the element at the index. If out of array bounds returns an error
  ```ruby
  a.fetch(-1) # => 2
  a.fetch(-2) # => "bar"
  a.fetch(1) # => "bar"
  ```
  also takes a second argument as a default value, which is what's if the index is out of range
## ``Array#first``
  - returns the first element when no argument is given
  - if passed an integer as an argument, returns a number of elements from the beginning of the array equal to that integer
  ```ruby
  a = [:foo, 'bar', 2]
  a.first # => :foo
  a # => [:foo, "bar", 2]
  a = [:foo, 'bar', 2]
  a.first(2) # => [:foo, "bar"]
  a = [:foo, 'bar', 2]
  a.first(50) # => [:foo, "bar", 2]
  ```
## ``Array#include?``
  - returns true if an element of the array is equivalent to the argument. Otherwise returns false
  ```ruby
  [0, 1, 2].include?(2) # => true
  [0, 1, 2].include?(3) # => false
  ```
## ``Array#join``
  - returns a string of elements contained within the array. Can take an argument that specifies what they'll be joined with in between. Elements are converted into strings with to_s. 
  ```ruby
  a = [:foo, 'bar', 2]
  a.join # => "foobar2"
  a = [:foo, 'bar', 2]
  a.join("\n") # => "foo\nbar\n2"
  ```
## ``Array#last``
  - returns last element if no argument is given
  - returns last x arguments if x is an integer
  ```ruby
  a = [:foo, 'bar', 2]
  a.last # => 2
  a # => [:foo, "bar", 2]
  a = [:foo, 'bar', 2]
  a.last(2) # => ["bar", 2]
  ```
## ``Array#map(!)``
  - Calls the block given with each element of the array and returns an array of the return values from each block call
  - if called with a bang, mutates the calling object, replacing each element with the return values from the block
  ```ruby
  a = [:foo, 'bar', 2]
  a1 = a.map {|element| element.class }
  a # => [:foo, 'bar', 2]
  a1 # => [Symbol, String, Integer]
  a = [:foo, 'bar', 2]
  a.map! { |element| element.class } # => [Symbol, String, Integer]
  a # => [Symbol, String, Integer]
  ```
## ``Array#partition``
  - returns a two dimensional array. First array contains elements that return truthy values when passed to the block, the other array contains all other elements
  ```ruby
  p = (1..4).partition {|i| i.even? }
  p # => [[2, 4], [1, 3]]
  p = ('a'..'d').partition {|c| c < 'c' }
  p # => [["a", "b"], ["c", "d"]]
  h = {foo: 0, bar: 1, baz: 2, bat: 3}
  p = h.partition {|key, value| key.start_with?('b') }
  p # => [[[:bar, 1], [:baz, 2], [:bat, 3]], [[:foo, 0]]]
  p = h.partition {|key, value| value < 2 }
  p # => [[[:foo, 0], [:bar, 1]], [[:baz, 2], [:bat, 3]]]
  ```
## ``Array#pop``
- removes and returns trailing element
  ```ruby
  a = [:foo, 'bar', 2]
  a.pop # => 2
  a # => [:foo, "bar"]
  ```
## ``Array#push``
  - appends trailing elements
  ```ruby
  a = [:foo, 'bar', 2]
  a.push(:baz, :bat) # => [:foo, "bar", 2, :baz, :bat]
  ```
## ``Array#reverse(!)``
  - reverses elements in array. Can be mutating with !
  ```ruby
  a = ['foo', 'bar', 'two']
  a1 = a.reverse
  a1 # => ["two", "bar", "foo"]
  ```
## ``Array#select(!)``
  - returns array with elements that return truthy value when passed to block
  - with a bang removes objects from Array that return falsy value
  ```ruby
  a = [:foo, 'bar', 2, :bam]
  a1 = a.select {|element| element.to_s.start_with?('b') }
  a1 # => ["bar", :bam]
  ```
## ``Array#shift``
  - removes and returns leading elements
  ```ruby
  a = [:foo, 'bar', 2]
  a.shift # => :foo
  a # => ['bar', 2]
  ```
## ``Array#slice(!)``
  - it's an alias for #[]
  - returns an element at the index passed in as an argument
  - with two arguments returns an array of a length that matches the second argument from the index that matches the first argument
  - can also be passed a range
```ruby
a = [:foo, 'bar', 2]
a[0] # => :foo
a[2] # => 2
a # => [:foo, "bar", 2]
a = [:foo, 'bar', 2]
a[0, 2] # => [:foo, "bar"]
a[1, 2] # => ["bar", 2]
a[0..-2] # => [:foo, "bar"]
```
## ``Array#sort(!)``
  - sorts the array using ``<=>`` and returns the results when no block is passed
  - if a block is passed, negative values are sorted earlier, zeros are equivalent, positive values are sorted later
```ruby
  - a = 'abcde'.split('').shuffle
a # => ["e", "b", "d", "a", "c"]
a1 = a.sort
a1 # => ["a", "b", "c", "d", "e"]
```
## ``Array#unshift``
  - prepends objects to self
  ```ruby
  a = [:foo, 'bar', 2]
  a.unshift(:bam, :bat) # => [:bam, :bat, :foo, "bar", 2]
  ```
# Hash methods: all?, any?, each_key, each_value, empty?, include?, key, key?, keys, map, select, select!, value?, values
## ``Hash#all?``
  - can be passed a block and will return true if all elements return a truthy value when passed to said block
  - other weird stuff you can do here, but I don't think it's likely to come up
  ```ruby
  {foo: 0, bar: 1, baz: 2}.all? {|key, value| value < 3 } # => true
  {foo: 0, bar: 1, baz: 2}.all? {|key, value| value < 2 } # => false
  ```
## ``Hash#any?``
  - similar to #all?, but is different in that it returns true if h.assoc(key) == object
    - Hash#assoc returns a two value array that contains the key and value
```ruby
h = {foo: 0, bar: 1, baz: 2}
h.any?([:bar, 1]) # => true
h.any?([:bar, 0]) # => false
h.any?([:baz, 1]) # => false
``` 
- with a block just returns true if any element returns a truthy value when passed to the block
```ruby
h = {foo: 0, bar: 1, baz: 2}
h.any? {|key, value| value < 3 } # => true
h.any? {|key, value| value > 3 } # => false
```
- ``Hash#each_key``
  - Calls the block passed to it with each key
```ruby
h = {foo: 0, bar: 1, baz: 2}
h.each_key {|key| puts key }  # => {:foo=>0, :bar=>1, :baz=>2}
```
## ``Hash#each_value``
  - calls the block passed to it with each value
```ruby
h = {foo: 0, bar: 1, baz: 2}
h.each_value {|value| puts value } # => {:foo=>0, :bar=>1, :baz=>2}
```
## ``Hash#empty?``
  - returns true if there's nothing in the hash, false otherwise
```ruby
{}.empty? # => true
{foo: 0, bar: 1, baz: 2}.empty? # => false
```
## ``Hash#include?``
  - returns true if key is found in self. Probably better aliased as ``has_key?`` or ``key?``
## ``Hash#key``
  - returns the key for the first key-value pair with the given value
```ruby
h = {foo: 0, bar: 2, baz: 2}
h.key(0) # => :foo
h.key(2) # => :bar
h.key(3) # => nil
```
## ``Hash#key(?)``
  - returns true if key is found in self. Probably better aliased as ``has_key?`` or ``key?``
## ``Hash#keys``
  - returns an array containing all keys in self
```ruby
h = {foo: 0, bar: 1, baz: 2}
h.keys # => [:foo, :bar, :baz]
```
## ``Hash#map``
  - returns an array of objects returned by a block
```ruby
{a: 1, b: 2, c: 3}.map {|key, value| puts "this is the key #{key}. This is the value #{value}"} # returns [nil. nil. nil]
```
## ``Hash#select(!)``
  - returns a hash with all of the elements that return a truthy value when passed to a block. 
```ruby
a = {foo: 0, bar: 1, baz: 2}.select {|key, value| key.start_with?('b') }
a # => {:bar=>1, :baz=>2}
```
## ``Hash#value?``
  - returns true if value is present in the hash. Also aliased as #has_value?
```ruby
{a: 1, b: 2, c: 3}.value?(3) #returns true
{a: 1, b: 2, c: 3}.has_value?(5) # returns false
```
## ``Hash#values``
  - returns an array with all of the values in the hash
```ruby
{a: 1, b: 2, c: 3}.values # returns [1, 2, 3]
h = {foo: 0, bar: 1, baz: 2}
h.values # => [0, 1, 2]
```
# iteration, break and next
[Source](https://launchschool.com/lessons/6a5eccc0/assignments/de35245d)
## ``break``
  - breaks out of the iterator completely
  - positioning can determine whether the code in an interation is performed at least once regardless, or if it could potentially not be executed at all.
## ``next``
  - moves to the next iteration without stopping iteration
  - can be positioned similarly to ``break`` to allow or disallow at least one iteration.
# selection and transformation
- selection
  - takes values from the original enumerator and returns them if they return a truthy value when passed to a block. It doesn't change these values. The length of the collection returned by select can be a different length than the original collection because not every value will necessarily return a truthy value. 
- transformation
  - uses the return value of the block to generate values that are returned in a new enumerable. The length of this enumerable is the same as the original. 
Here's a table to keep track of the similarities and differences between select, transform and iteration
| Method      | Action            |Return value of block | New collection returned? | Length of new collection|
|-------------|-------------------|----------------------|--------------------------|--------------------------|
| each        | iteration         | not considered       | no                       | same as original         |
| map         | transformation    | truthiness considered| yes                      | same as original         |
| select      | selection         | Yes                  | yes                      | any length up to original|
# nested data structures and nested iteration
## nested data structures
  - a nested data structure is an array within an array, hash within a hash, etc. 
  - different elements are accessed by chaining method calls together
  ```ruby
  array = [[1, 2], "cat", ["dog"]]
  array[0][0] # returns 1
  array[1] # returns "cat"
  array[2][0] # returns "dog
  array[2] # returns ["dog"]
  ```

- nested iteration
  - 
# shallow copy and deep copy
## shallow copy
[source](https://launchschool.com/lessons/fa1f5e7e/assignments/fe48f7b1)
- a shallow copy is created when the object that is copied is duplicated, but the objects within the object aren't. They're still shared between the original object and the copied object. 
- if a method is called on the array, only the array it is called on is modified. 
```ruby
arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.map! do |char|
  char.upcase
end

arr1 # => ["a", "b", "c"]
arr2 # => ["A", "B", "C"]
```
- if the method is called on each element, each element ends up being modified, which means that both copies of the array are then modified
```ruby
arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.each do |char|
  char.upcase!
end

arr1 # => ["A", "B", "C"]
arr2 # => ["A", "B", "C"]
```
-``dup``
  - makes a shallow sopy of the object it's called on. Doesn't preserve frozen state of said object.
-``clone``
  - makes a shallow copy of the object it's called on. Preserves frozen state of said object. 
## deep copy
[source](https://launchschool.com/lessons/fa1f5e7e/assignments/fe48f7b1)
  - no built in, natural way in Ruby to make a deep copy. Be aware of how dup, clone and freeze work in light of this
# method chaining

[Source](https://launchschool.com/books/ruby/read/methods#chainingmethods)

- if a method returns a value, another method can be called directly on that value. This is called "chaining." For example

```ruby
# this method chain gets an input from the user and returns it as a string, 
#removes the newline character, uppercases each character in the string and returns is as a new #string

gets.chomp.uppercase
```

- each method returns a value that is then passed to the next succesive method. 