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
a = 4
b = 2
2.times do |a|  
  a = 5  
  puts a
end
puts a
puts b
```
The code outputs 5 2 times, then a 4 and a 2. It returns nil. This shows variable shadowing because the block variable ``a`` is what ends up being reassigned, not the local variable ``a``. This is because in a block, the block variable takes precedence over the external local variable. 


### Example 2

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
n = 10
1.times do |n|  
  n = 11
end
puts n
```
The code outputs 10. The block variable prevents the outer scoped local variable from being accessed, and the block variable is what ``11`` gets assigned to.
### Example 3

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
animal = "dog"
loop do |animal|  
  animal = "cat"  
  break
end
puts animal
```
This code outputs ``dog`` demonstrating the concept of variable shadowing. The block variable ``animal`` is what cat is assigned to instead of the presumably intended local variable ``animal``. 
### Object Passing/Variables As Pointers

### Example 1

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = "hi there"
b = a
a = "not here"
p a 
p b
```
What are a and b?
``a`` is ``"not here"`` and ``b`` is ``"hi there"``. ``b`` is assigned to the string object ``hi there`` in line 2 there. When ``a`` is reassigned to a different string object, ``b`` continues to point to the object it was originally assigned to. 
### Example 2

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
a = "hi there"
b = a
a << ", Bob"
p a
p b
```
What are a and b?

both point to ``"hi there, Bob"``. This is because ``<<`` mutates the object that it's called on. So, the object that both ``a`` and ``b`` point to is mutated, and as a result, when either variable is called, that mutated string is also returned. 

### Example 3

What does the following code return? What does it output? Why? What concept does it demonstrate?

```ruby
a = [1, 2, 3, 3]
b = a
c = a.uniq
p a
p b
p c
```
What are a, b, and c? What if the last line was `c = a.uniq!`?

``a`` and ``b`` point to the same array. ``c`` points to the array returned when ``uniq`` is called on ``[1, 2, 3, 3]``. If ``uniq!`` is called instead, the original array is mutated and all three variables point to the same array. 

### Example 4

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end
a = ['a', 'b', 'c']
test(a)
```
This code demonstrates the concept of transformation with the ``map`` method. Because ``a`` isn't modified by the ``map`` method, the ``test`` method returns the original array ``['a', 'b', 'c']`` when it's executed. If the ``map!`` method were used inside of ``test`` instead, the array object referenced by ``a`` would be modified, and a would reference an array that contained the return values of the block when each respective element was passed to the ``map`` method.  

### Example 5

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
a = 5.2
b = 7.3
a = b
b += 1.1
```
What is `a` and `b`? Why?

Because the values referenced by the integers in this example are immutable, ``a`` and ``b`` point to different values. The ``+=`` method adds ``1.1`` to the value that both ``a`` and ``b`` point to, but because integers are immutable, the object that both ``a`` and ``b`` point to isn't mutated. ``b`` is simply reassigned to ``8.4`` a value ``1.1`` greater than ``7.3``.

### Example 6

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
def test(str)
  str  += '!'
  str.downcase!
end
test_str = 'Written Assessment'
test(test_str)
puts test_str
```

The variable ``test_str`` is unmodified by the code inside of ``test``. This is because the first method, ``+=`` performs reassignment. So a new string object ``"Written Assessment"`` is returned which is further modified by the ``downcase!`` method. 

[Link](https://launchschool.com/blog/object-passing-in-ruby) to explanation of examples below

### Example 7

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
def plus(x, y)
  x = x + y
end
a = 3
b = plus(a, 2)
puts a
puts b
```
I think that ``a`` will still refer to ``3`` because it won't be modified by the reassignment within the method scope. This is because ruby is pass by value for integers, which means that a copy of the original value is passed into the method, not the actual value, so any modifications performed inside of the method wouldn't change the values referred to variables outside of the method. The return value of ``plus`` with the arguments ``a`` and ``2`` is assigned to ``b`` which means that when the ``p`` method is called on ``b`` ``5`` is returned. 

### Example 8

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
def increment(x)
  x << 'b'
end
y = 'a'
increment(y) 
puts y
```
This code returns ``'ab'``. This is because the ``<<`` method is mutating, and ruby is pass by reference for strings. So mutating methods within the method modify the value referenced by the variable. So when the ``puts`` method is called on ``y`` the string object ``"ab"`` is returned. 
### Example 9

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
def change_name(name)
  name = 'bob'      # does this reassignment change the object outside the method?
end
name = 'jim'
change_name(name)
puts name
```
This code returns ``'jim'`` because Ruby is pass by reference value, which means that a reference to the object referred to by ``name`` is passed to the method, but the actual variable isn't. That means that reassignment won't change what the variable references outside of the ``change_name`` method. Reassignment is non-mutating. 
### Example 10

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
def cap(str)
  str.capitalize!   # does this affect the object outside the method?
end
name = "jim"
cap(name)
puts name
```

This affects the object outside the method. A reference to the string value is passed into the method via the parameter ``str``. So the mutating method ``capitalize!`` mutates that string object and the ``puts`` method invoked on ``name`` outputs ``Jim``. 
### Example 11

What is `arr`? Why? What concept does it demonstrate?
```ruby
a = [1, 3]
b = [2]
arr = [a, b]
p arr
arr[1] = 5
p arr
```
At the end of all of this, you end up with a multi dimensional array ``[[1, 5], [2]]``. The array is set with the objects referenced by ``a`` and ``b`` initially. Then the ``[]=`` method is used to reassign the value of the array referenced by ``a`` at index 1. Because ``arr`` points at that same object, when it is modified, the value of ``arr`` is modified as well.  
### Example 12

[Link to example](https://launchschool.com/lessons/c53f2250/assignments/1a6a2665)
```ruby
arr1 = ["a", "b", "c"]
arr2 = arr1.dup
arr2.map! do |char|
  char.upcase
end
puts arr1
puts arr2
```
``dup`` creates shallow copies, which means that ``arr1`` and ``arr2`` are different arrays but their elements both reference the same set of objects. However, because ``map!`` is a destructive method, a new object is created and placed in 
### fObject Mutability/Mutating Methods

[Here’s the article](https://launchschool.com/blog/mutating-and-non-mutating-methods) with some of the below examples

### Example 1

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
def fix(value)
  value.upcase!
  value.concat('!')
  value
end
s = 'hello'
t = fix(s)
```
What values do `s` and `t` have? Why?

### Example 2

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
def fix(value)
  value = value.upcase
  value.concat('!')
end
s = 'hello'
åt = fix(s)
```
What values do `s` and `t` have? Why?

### Example 3

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
def fix(value)
  value << 'xyz'
  value = value.upcase
  value.concat('!')
end
s = 'hello'
åt = fix(s)
```
What values do `s` and `t` have? Why?

### Example 4

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
def fix(value)
  value = value.upcase!
  value.concat('!')
end
s = 'hello'
t = fix(s)
```
What values do `s` and `t` have? Why?

### Example 5

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
def fix(value)
  value[1] = 'x'
  value
end
s = 'abc'
t = fix(s)
```
What values do `s` and `t` have? Why?

### Example 6

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
def a_method(string)
  string << ' world'
end
a = 'hello'
a_method(a)

p a
```
### Example 7

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
arr
num = 3
num = 2 * num
```
### Example 8

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
a = %w(a b c)
a[1] = '-'
p a
```
### Example 9

[Link to page with #9 & #10](https://launchschool.com/lessons/a0f3cd44/assignments/4b1ad598)
```ruby
def add_name(arr, name)
  arr = arr + [name]
end
names = ['bob', 'kim']
add_name(names, 'jim')
puts names
```
### Example 10
```ruby
def add_name(arr, name)
  arr = arr << name
end
names = ['bob', 'kim']
add_name(names, 'jim')
puts names
```
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
This code returns an array containing all of the odd integers in ``arr``. It doesn't output anything. This shows that ``select`` filters the given array based on the return value from the block as it passes each element to it. The even integers in ``arr`` return false, and so they aren't added to the array. The odd integers return true, so they are added to the returned array. 
### Example 3

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_array = arr.select do |n|
   n + 1
end
p new_array
```
This code outputs an array containing all of the same numbers that we see in ``arr``. This array is different from ``arr`` however, because the ``select`` method returns a new array. Each element in ``arr`` returns a truthy value when passed to the block, so each element is selected. 
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
This code returns an empty array, because the block returns a falsy value, ``nil`` regardless of what value is passed to it from the array. Because the value is false for each element, no elements are selected and an empty array is returned. 
### Example 5

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
words = %w(jump trip laugh run talk)
new_array = words.map do |word|  
  word.start_with?("t")
end
p new_array
```
This will return an array of booleans, because that's what the ``start_with?`` method returns. ``map`` takes the return from the block and adds it to a new collection. So an aray [false, true, false, false, true] is returned, based on what each element returns when they're passed to the ``star_with?`` method. 
### Example 6

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |n| puts n }
```
it outputs each element of the array, and returns the original array. The ``each`` method iterates through the array, it doesn't change any of the values inside of it, and it doesn't return a modified array. 
### Example 7

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
incremented = arr.map do |n|
  n + 1
end
p incremented
```
This code returns an array with values increased by one from the original array. ``map`` transforms, which means it returns an array with each value determined by the return value of the block when each successive element is passed to it. In this case, each integer is passed to the block and returns ``n + 1``. This return is stored in local variable ``incremented`` which is called with ``p``. The return and output of this method is the new array.
### Example 8

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_array = arr.map do |n|   
  n > 1
end

p new_array
```
This code returns an array of booleans. The value of these booleans is determined by what each element returns when passed as n to the expression ``n > 1``. This means the first value is false, but the rest are true. This demonstrates that ``map`` uses the return value from the block. 
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
This will output an array with 10 ``nil`` because the output of the block is nil. Thhs demonstrates the concept of transformation. This array is output because when each element of ``arr`` is used in the block passed into the ``map`` method the value returned is ``nil``. 
### Example 10

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
a = "hello"
[1, 2, 3].map { |num| a }
```
This code outputs nothing. It does return an array of hellos, because the return value of the block is always going to be hello. This is because local variable ``a`` is initialized on line 1 to the string object ``hello``. 
### Example 11

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
[1, 2, 3].each do |num|
  puts num
end
```
It outputs each number, returns the original array. It does this because ``each`` doesn't modify the original array, it simply iterates through it. 
### Other Collection Methods

[Link to all examples below](https://launchschool.com/lessons/85376b6d/assignments/d86be6b5)

### Example 1
```ruby
[1, 2, 3].any? do |num|  num > 2end
```
### Example 2
```ruby
{ a: "ant", b: "bear", c: "cat" }.any? do |key, value|  value.size > 4end
```
### Example 3
```ruby
[1, 2, 3].all? do |num|  num > 2end
```
### Example 4
```ruby
{ a: "ant", b: "bear", c: "cat" }.all? do |key, value|  value.length >= 3end
```
### Example 5
```ruby
[1, 2, 3].each_with_index do |num, index|  puts "The index of #{num} is #{index}."end
```
### Example 6
```ruby
{ a: "ant", b: "bear", c: "cat" }.each_with_object([]) do |pair, array|
  array << pair.last
end
```
### Example 7
```ruby
{ a: "ant", b: "bear", c: "cat" }.each_with_object({}) do |(key, value), hash|
  hash[value] = key
end
```
### Example 8
```ruby
odd, even = [1, 2, 3].partition do |num|
  num.odd?
end
p odd
p even
```
### Truthiness

### Example 1

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
a = "Hello"
if a
  puts "Hello is truthy"
else
  puts "Hello is falsey"
end
```
### Example 2

What does the following code return? What does it output? Why? What concept does it demonstrate?
```ruby
def test
  puts "written assessment"
end

var = test
if var
  puts "written assessment"
else
  puts "interview"
end
```