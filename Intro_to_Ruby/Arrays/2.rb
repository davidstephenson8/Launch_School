=begin
1. this is a complicated question. We start with an array of two strings. The product method is called on
this array, with an array from 1-3 as the argument. I'd expect this to return an array with each of these
values, so [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]. The next line deletes the first 
and last values in the first array, so it will delete the entire arr array. This will happen because
product doesn't mutate the caller.  	

2. This is a similar situation, but we now have an array within an array. After playing around in irb, I 
think that the product method will return [["b", [1, 2, 3]], ["a", [1, 2, 3]]]
	
end