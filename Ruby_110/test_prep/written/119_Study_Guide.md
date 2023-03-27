- [String and Array operations: indexing, range indexing (slicing), negative indexes, assigning elements](#string-and-array-operations-indexing-range-indexing-slicing-negative-indexes-assigning-elements)
- [Hash operations: indexing, string and symbol keys](#hash-operations-indexing-string-and-symbol-keys)
- [String methods: chars, concat, count, downcase, downcase!, freeze, include?, replace, reverse, reverse!, size, slice, slice!, split, strip, strip!, upcase, upcase!, upto](#string-methods-chars-concat-count-downcase-downcase-freeze-include-replace-reverse-reverse-size-slice-slice-split-strip-strip-upcase-upcase-upto)
- [Array methods: all?, any?, each, each\_with\_index, each\_with\_object, fetch, first, include?, join, last, map, map!, partition, pop, push, reverse, reverse!, select, select!, shift, slice, slice!, sort, sort!, unshift](#array-methods-all-any-each-each_with_index-each_with_object-fetch-first-include-join-last-map-map-partition-pop-push-reverse-reverse-select-select-shift-slice-slice-sort-sort-unshift)
- [Hash methods: all?, any?, each\_key, each\_value, empty?, include?, key, key?, keys, map, select, select!, value?, values](#hash-methods-all-any-each_key-each_value-empty-include-key-key-keys-map-select-select-value-values)
- [iteration, break and next](#iteration-break-and-next)
- [selection and transformation](#selection-and-transformation)
- [nested data structures and nested iteration](#nested-data-structures-and-nested-iteration)
- [shallow copy and deep copy](#shallow-copy-and-deep-copy)
- [method chaining](#method-chaining)


# String and Array operations: indexing, range indexing (slicing), negative indexes, assigning elements
- indexing

[Source](https://launchschool.com/lessons/6a5eccc0/assignments/17756d47)

- indicies represent each character in the string or each element of the array. They are numbered starting from 0. 

```ruby
["a", "b", "c", "d"]

# In this array, string object "a" is at index 0, the string object "b" at index 1 and so forth.
```  

- range indexing (slicing)
  - Range indexing is another way to return characters from a string. It's actually an alternative syntax to use the String#slice method. 
```ruby
string = "John Stockton sends the Utah Jazz to the NBA finals"

string[2, 2] # returns "hn"
string[24, 9] # returns "Utah Jazz"
```
  - the first number in range indexing determines the index you start on, the second determines the number of characters that are returned by the method.  
- negative indicies
  - negative indices are counted from the end of the string. So -1 represents the last character in a string, -2 represents the second to last and so on
- assigning elements
  - typically use #[]= method
# Hash operations: indexing, string and symbol keys
- indexing
- string keys
- symbol keys
# String methods: chars, concat, count, downcase, downcase!, freeze, include?, replace, reverse, reverse!, size, slice, slice!, split, strip, strip!, upcase, upcase!, upto
- ``String#chars``
  - this method splits the string into its component characters and returns an array with each separate character in the string as an element in the array. 
  - ``"swag"`` becomes ``["s", "w", "a", "g"]``
- ``String#concat``
  - this method combines two strings together. This method is mutating, so the object it's called on is modified to be the concatenation of the two strings
- ``String#count``
  - this method returns a count of the characters passed in via the argument. It behaves in an interesting way, though. 
  ```ruby
  string = "The quick brown fox jumps over a dog but not any specific dog really"
  string.count("t") # returns 2, as expected
  string.count("og") # you might think that it'd look for this specific substring, which would return 2. But it actually returns 8, the total that each character appears in the string.
  string.count("abcdef", "efgh") #returns 6, which is the intersection of the two strings. ("ef") 
  ```
- ``String#downcase(!)``
  - returns a new string with all of the characters lowercase if there's no bang (!) at the end. The method mutates if the bang is at the end. 
  ``` ruby
  string = "Is ThIs UpPeRcAsE or lOwErCaSe"
  string.downcase #=> "is this uppercase or lowercase"
  string.downcase!.object_id == string.object_id #returns true
  string.downcase.object_id == string.object_id #returns false
  ```
- ``String#freeze``
  - prevents string from being modified. If a method is called on the string that would modify it ruby throws an error called, conveniently, ``FrozenError``. 
- ``String#include?``
  - returns true or false depending on if the string contains the substring passed in as an argument or not.
  ```ruby
  string = "this is a string"
  string.include("i") #returns true
  string.include("y") #returns false
  string.include("is") #returns true
  string.include("at") #returns false (not like count where it looks for each individual character, looks for the substring)
  ```
- ``String#replace``
  - replaces the contents of the original string with the argument
  ```ruby
  string = "swaggy p"
  string.replace("lol bye")
  string # returns "lol bye"
  ```
- ``String#reverse(!)``
- returns either a new string with the characters reversed, or mutates the original string and reverses the characters. 
  ```ruby
  string = "abcde"
  string.reverse == "edcba" #returns true
  string == "abcde" #true
  string.reverse! == "edcba" #returns true
  string == "edcba" # returns true
  ```
- ``String#size``
  - returns the number of characters in the string
  - alias for length
- ``String#slice(!)``
  - returns a substring starting at the index specified by the first argument and the length of the second argument. 
  - ``slice(!)`` mutates the string it's called on
- ``String#split``
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
- ``String#strip(!)``
  - removes all whitespace. 
- ``String#upcase(!)``
  - returns string with all characters uppercase instead
- ``String#upto``
  - iterates up to an argument from the integer that the method is called on
# Array methods: all?, any?, each, each_with_index, each_with_object, fetch, first, include?, join, last, map, map!, partition, pop, push, reverse, reverse!, select, select!, shift, slice, slice!, sort, sort!, unshift
- ``Array#all?``
- ``Array#any?``
- ``Array#each``
- ``Array#each_with_index``
- ``Array#each_with_object``
- ``Array#fetch``
- ``Array#first``
- ``Array#include?``
- ``Array#join``
- ``Array#last``
- ``Array#map(!)``
- ``Array#partition``
- ``Array#pop``
- ``Array#push``
- ``Array#reverse(!)``
- ``Array#select(!)``
- ``Array#shift``
- ``Array#slice(!)``
- ``Array#sort(!)``
- ``Array#unshift``
# Hash methods: all?, any?, each_key, each_value, empty?, include?, key, key?, keys, map, select, select!, value?, values
- ``Hash#all?``
- ``Hash#any?``
- ``Hash#each_key``
- ``Hash#each_value``
- ``Hash#empty?``
- ``Hash#include?``
- ``Hash#key``
- ``Hash#key(?)``
- ``Hash#keys``
- ``Hash#map``
- ``Hash#select(!)``
- ``Hash#value?``
- ``Hash#values``
# iteration, break and next
- ``break``
- ``next``
# selection and transformation
- selection
- transformation
# nested data structures and nested iteration
- nested data structures
- nested iteration
# shallow copy and deep copy
- shallow copy
- deep copy
# method chaining

[Source](https://launchschool.com/books/ruby/read/methods#chainingmethods)

- method chaining
  - if a method returns a value, another method can be called directly on that value. This is called "chaining." For example

```ruby
# this method chain gets an input from the user and returns it as a string, 
#removes the newline character, uppercases each character in the string and returns is as a new #string

gets.chomp.uppercase
```

- each method returns a value that is then passed to the next succesive method. 