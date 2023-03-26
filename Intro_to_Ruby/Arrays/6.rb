=begin
names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'

returns a error message that you can't return a string for an integer

The problem here is that you're passing the value that you want modified in the array, not the index of
the value that you want modified. To change the code you should input names[3] = 'jody' and it should work
as intended. 

=end