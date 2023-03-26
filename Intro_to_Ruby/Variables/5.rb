=begin
	In the first program x prints 3 to the screen. x is initialized s a global
	variable before the block after the times method. The block in the times
	method modifies x and then after the block is done, the value of x remains
	changed. 
	
	The second program gives an error. x was not initialized before the block 
	initialized and modifies x as a local variable. Because of this, once 
	the block ends, the value of x isn't accessible to the rest of the program.
=end