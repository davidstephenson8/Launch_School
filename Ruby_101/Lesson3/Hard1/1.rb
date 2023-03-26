if false
  greeting = "hello world"
end

greeting

=begin
  
I expect to get an uninitialized variable error. 

I was incorrect, the variable is initialized to nil if it's in an if clause even if the clause doesn't get executed. 

=end