# Group 1
my_proc = proc { |thing| puts "This is a #{thing}." }
puts my_proc
puts my_proc.class
my_proc.call
my_proc.call('cat')

# # Group 2
my_lambda = lambda { |thing| puts "This is a #{thing}." }
my_second_lambda = -> (thing) { puts "This is a #{thing}." }
puts my_lambda
puts my_second_lambda
puts my_lambda.class
my_lambda.call('dog')
my_lambda.call
my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." }

# # Group 3
# def block_method_1(animal)
#   yield
# end

# block_method_1('seal') { |seal| puts "This is a #{seal}."}
# block_method_1('seal')

# # Group 4
# def block_method_2(animal)
#   yield(animal)
# end

# block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
# block_method_2('turtle') do |turtle, seal|
#   puts "This is a #{turtle} and a #{seal}."
# end
# block_method_2('turtle') { puts "This is a #{animal}."}

=begin
1
we're using procs and all of these expressions are able to be executed. No error when the call method is used without an argument even though the proc is expecting a block variable. 
2
the syntax is a little bit different for letting ruby know the code snippet is a lamba, you can say lambda right before the block or use ->
there's also less flexibility, we can't call a lambda without passing a variable to it. The lambda is an object, though, that can be 
stored and used different places in ruby
3
a block isn't an object, but similarly to a proc, if it's executed without the argument it expects, it'll automatically assign that variable to nil and run as expected otherwise. 
4
group 4 shows that the block isn't scoped at the method level, it doesn't have access to the animal parameter that's passed inot the method on line 27. 
=end