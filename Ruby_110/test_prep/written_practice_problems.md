### Local Variable Scope

### Example 1

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = “Hello”
b = a
a = “Goodbye”

puts a
puts b
```

The following code outputs the string object ``"Hello"`` followed by the string object ``"Goodbye"`` on the 
following line. It returns ``nil`` twice. The ``puts`` method outputs the object passed to it and returns ``nil``.
This happens because variables point independently to values in memory. The local variable ``b`` points to the
string object ``"Hello"`` not local variable ``a``. As a result, then the object that ``a`` points to changes,
the object that ``b`` points to remains the same.  

### Example 2

#What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = 4

loop do  
  a = 5  
  b = 3

  break
end

puts a
puts b
```

This code returns ``nil`` once and outputs 4 and then throws an error when it attempts to pass b to the ``puts``
method. This is because the local variable ``b`` is not assigned to a value that's accessible outside of the 
block's scope. Blocks have scopes that allow methods and variables in their external scope to be accessed inside of the block, but internal variable assignments are inaccessible outside of the block. 

### Example 3

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = 4
b = 2

loop do  
  c = 3  
  a = c  
  break
end

puts a
puts b
```
This code returns nil and nil, and ouputs 3 and 2. The local variable ``a`` is accessible within the scope of the 
block called by the ``loop`` method. As a result, when the ``=`` operator is used, the value that local variable
``c`` points to, 3, is reassigned to ``a``. This demonstrates the concept of variable reassignment and variable scope. 

### Example 4

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def example(str)
  i = 3  
  loop do    
    puts str    
    i -= 1    
    break if i == 0  
  end
end

example('hello')
```
This code outputs hello three times. It returns nil three times. This happens because of the way that the ``loop`` method works. It accepts a block that it iterates though. Each time the block is called, the local variable ``i`` is reassigned to a value one less then its current value. Each time the block is executed, the loop method checks to see if ``i`` is equal to ``0``. If this condition is met, the break statement is executed, and the loop method is exited. 
### Example 5

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
def greetings(str)  
  puts str  
  puts "Goodbye"
end

word = "Hello"
greetings(word)
```
this code returns nil twice and outputs the string object ``"Hello"`` one one line and the string object ``"Goodbye"`` on the next. The reason why it outputs ``"Goodbye"`` is simple, it's passed as an argument to the ``puts`` method from within the ``greetings`` method. The puts method executes as expected, and returns its argument and outputs ``nil``. Why ``Hello`` is output is a little tricker. The local variable ``word`` is initialized to ``"Hello"``. Then word is passed to the ``greetings`` method as an argument. The method assigns the method scoped variable ``str`` to the value pointed to by ``word``. Then ``puts`` is called with ``str`` as an argument, so the value of ``str`` is output.
[Problem link](https://launchschool.com/lessons/a0f3cd44/assignments/9e9e907c)

### Example 6

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
arr = [1, 2, 3, 4]
counter = 0
sum = 0

loop do  
  sum += arr[counter]  
  counter += 1  
  break if counter == arr.size
end 

puts "Your total is #{sum}"
```
This code snippet sums all of the values in an array. It outputs ``"Your total is 10.``. It does this because each time the block passed to the loop method is executed, sum is reassigned to a value equal to its current value plus the value of the array accessed by the ``[]`` method with ``counter`` passed in as an argument. The loop method stops iterating once the ``counter`` variable is equal to the size of the array.  

### Example 7

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = 'Bob'

5.times do |x|  
  a = 'Bill'
end

p a
```
This code returns ``"Bill"`` and outputs ``"Bill"``. This is demonstrating block scope again. The block has a scope that allows the local variable ``a`` to be accessed from within the block. The block is executed 5 times, and each time it reassigns ``a`` to ``"Bill"``. This is because blocks can access outer scopes. When the ``p`` method is called on ``a`` it outputs the string a was reassigned to inside of the block, and returns that same string. 

### Example 8

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
animal = "dog"

loop do |_|  
  animal = "cat"  
  var = "ball"  
  break
end

puts animal
puts var
```
This code snippet throws an error, demonstrating the concept of variable scope. The local variable ``var`` is initialized inside of the block, and so is inaccessible outside of the block. The code snippet does output ``cat`` and return nil before this error is encountered. 

### Variable Shadowing

### Example 1

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
animal = "dog"

loop do |_|  
  animal = "cat"  
  var = "ball"  
  break
end

puts animal
puts var
```

a = 4b = 22.times do |a|  a = 5  puts aendputs aputs b

### Example 2

What does the following code return? What does it output? Why? What concept does it demonstrate?

n = 101.times do |n|  n = 11endputs n

### Example 3

What does the following code return? What does it output? Why? What concept does it demonstrate?

animal = "dog"loop do |animal|  animal = "cat"  breakendputs animal

### Object Passing/Variables As Pointers

### Example 1

What does the following code return? What does it output? Why? What concept does it demonstrate?

a = "hi there"b = aa = "not here"

What are a and b?

### Example 2

What does the following code return? What does it output? Why? What concept does it demonstrate?

a = "hi there"b = aa << ", Bob"

What are a and b?

### Example 3

What does the following code return? What does it output? Why? What concept does it demonstrate?

a = [1, 2, 3, 3]b = ac = a.uniq

What are a, b, and c? What if the last line was `c = a.uniq!`?

### Example 4

What does the following code return? What does it output? Why? What concept does it demonstrate?

def test(b)  b.map {|letter| "I like the letter: #{letter}"}enda = ['a', 'b', 'c']test(a)

What is `a`? What if we called `map!` instead of `map`?

### Example 5

What does the following code return? What does it output? Why? What concept does it demonstrate?

a = 5.2b = 7.3a = bb += 1.1

What is `a` and `b`? Why?

### Example 6

What does the following code return? What does it output? Why? What concept does it demonstrate?

def test(str)  str  += '!'  str.downcase!endtest_str = 'Written Assessment'test(test_str)puts test_str

[Link](https://launchschool.com/blog/object-passing-in-ruby) to explanation of examples below

### Example 7

What does the following code return? What does it output? Why? What concept does it demonstrate?

def plus(x, y)  x = x + yenda = 3b = plus(a, 2)

puts aputs b

### Example 8

What does the following code return? What does it output? Why? What concept does it demonstrate?

def increment(x)  x << 'b'endy = 'a'increment(y) puts y

### Example 9

What does the following code return? What does it output? Why? What concept does it demonstrate?

def change_name(name)  name = 'bob'      # does this reassignment change the object outside the method?endname = 'jim'change_name(name)puts name

### Example 10

What does the following code return? What does it output? Why? What concept does it demonstrate?

def cap(str)  str.capitalize!   # does this affect the object outside the method?endname = "jim"cap(name)puts name

### Example 11

What is `arr`? Why? What concept does it demonstrate?

a = [1, 3]b = [2]arr = [a, b]arra[1] = 5arr

### Example 12

[Link to example](https://launchschool.com/lessons/c53f2250/assignments/1a6a2665)

arr1 = ["a", "b", "c"]arr2 = arr1.duparr2.map! do |char|  char.upcaseendputs arr1 puts arr2

### fObject Mutability/Mutating Methods

[Here’s the article](https://launchschool.com/blog/mutating-and-non-mutating-methods) with some of the below examples

### Example 1

What does the following code return? What does it output? Why? What concept does it demonstrate?

def fix(value)  value.upcase!  value.concat('!')  valueends = 'hello't = fix(s)

What values do `s` and `t` have? Why?

### Example 2

What does the following code return? What does it output? Why? What concept does it demonstrate?

def fix(value)  value = value.upcase  value.concat('!')ends = 'hello't = fix(s)

What values do `s` and `t` have? Why?

### Example 3

What does the following code return? What does it output? Why? What concept does it demonstrate?

def fix(value)  value << 'xyz'  value = value.upcase  value.concat('!')ends = 'hello't = fix(s)

What values do `s` and `t` have? Why?

### Example 4

What does the following code return? What does it output? Why? What concept does it demonstrate?

def fix(value)  value = value.upcase!  value.concat('!')ends = 'hello't = fix(s)

What values do `s` and `t` have? Why?

### Example 5

What does the following code return? What does it output? Why? What concept does it demonstrate?

def fix(value) value[1] = 'x' value ends = 'abc't = fix(s)

What values do `s` and `t` have? Why?

### Example 6

What does the following code return? What does it output? Why? What concept does it demonstrate?

def a_method(string)  string << ' world'enda = 'hello'a_method(a)

p a

### Example 7

What does the following code return? What does it output? Why? What concept does it demonstrate?

arrnum = 3num = 2 * num

### Example 8

What does the following code return? What does it output? Why? What concept does it demonstrate?

a = %w(a b c)a[1] = '-'p a

### Example 9

[Link to page with #9 & #10](https://launchschool.com/lessons/a0f3cd44/assignments/4b1ad598)

def add_name(arr, name)  arr = arr + [name]endnames = ['bob', 'kim']add_name(names, 'jim')puts names

### Example 10

def add_name(arr, name)  arr = arr << nameendnames = ['bob', 'kim']add_name(names, 'jim')puts names

### Each, Map, Select

### Example 1

What does the following code return? What does it output? Why? What concept does it 	demonstrate?

```ruby
array = [1, 2, 3, 4, 5]
p array.select do |num|   
  puts num if num.odd?
end
```
this code outputs 1, 3, and 5, and then returns an empty array. This is because the ``select`` method evaluates the return value of the block to determine if the current element should be added to a new array. Because the puts method returns nil, each element returns a falsy value when passed to the block, so no elements are added to the array returned by ``select``. This demonstrates the concept of ``select`` as a filter.
### Example 2

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.select { |n| n.odd? }
```
This code returns an array containing all of the odd integers in ``arr``. 
### Example 3

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_array = arr.select do |n|
   n + 1
end
p new_array
```
### Example 4

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_array = arr.select do |n| 
  n + 1  
  puts n
end
p new_array
```
### Example 5

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
words = %w(jump trip laugh run talk)
new_array = words.map do |word|  
  word.start_with?("t")
end
p new_array
```
### Example 6

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |n| puts n }
```
### Example 7

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
incremented = arr.map do |n|
  n + 1
end
p incremented
```
### Example 8

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_array = arr.map do |n|   
  n > 1
end

p new_array
```
### Example 9

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_array = arr.map do |n| 
  n > 1  
  puts n
end
p new_array
```
### Example 10

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
a = "hello"[1, 2, 3].map { |num| a }
```
### Example 11

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
[1, 2, 3].each do |num|
  puts num
end
```
### Other Collection Methods

[Link to all examples below](https://launchschool.com/lessons/85376b6d/assignments/d86be6b5)

### Example 1

[1, 2, 3].any? do |num|  num > 2end

### Example 2

{ a: "ant", b: "bear", c: "cat" }.any? do |key, value|  value.size > 4end

### Example 3

[1, 2, 3].all? do |num|  num > 2end

### Example 4

{ a: "ant", b: "bear", c: "cat" }.all? do |key, value|  value.length >= 3end

### Example 5

[1, 2, 3].each_with_index do |num, index|  puts "The index of #{num} is #{index}."end

### Example 6

{ a: "ant", b: "bear", c: "cat" }.each_with_object([]) do |pair, array|  array << pair.lastend

### Example 7

{ a: "ant", b: "bear", c: "cat" }.each_with_object({}) do |(key, value), hash|  hash[value] = keyend

### Example 8

odd, even = [1, 2, 3].partition do |num|  num.odd?endp odd p even

### Truthiness

### Example 1

What does the following code return? What does it output? Why? What concept does it demonstrate?

a = "Hello"if a  puts "Hello is truthy"else  puts "Hello is falsey"end

### Example 2

What does the following code return? What does it output? Why? What concept does it demonstrate?

def test  puts "written assessment"end

var = testif var  puts "written assessment"else  puts "interview"end