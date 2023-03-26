=begin
  
I think that the first one would be better because it seems to do what she's looking for better. It changes the array permanently by mutating it. 

Launch disagreed, and their points definitely make sense. Looking at it now, returning a new object and not mutating the arguments passed to the method is
beneficial. Using our rule of thumb that we only want to do one thing, either return a meaningful value or change something,  the second one 
is the one to go with.

=end

