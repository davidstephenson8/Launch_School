=begin
Given two arrays a and b write a function comp(a, b) that checks whether the two arrays have 
the "same" elements, with the same multiplicities (the multiplicity of a member is the number of times it appears). 
"Same" means, here, that the elements in b are the elements in a squared, regardless of the order.

Examples

Valid arrays

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]
comp(a, b) returns true because in b 121 is the square of 11, 14641 is the square of 121, 20736 the square of 144,
361 the square of 19, 25921 the square of 161, and so on. It gets obvious if we write b's elements in terms of squares:

a = [121, 144, 19, 161, 19, 144, 19, 11] 
b = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]
Invalid arrays

If, for example, we change the first number to something else, comp is not returning true anymore:

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [132, 14641, 20736, 361, 25921, 361, 20736, 361]
comp(a,b) returns false because in b 132 is not the square of any number of a.

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 36100, 25921, 361, 20736, 361]
comp(a,b) returns false because in b 36100 is not the square of any number of a.

Remarks

a or b might be [] or {} (all languages except R, Shell).
a or b might be nil or null or None or nothing (except in C++, COBOL, Crystal, D, Dart, Elixir, Fortran, F#, Haskell, Nim, OCaml, Pascal, Perl, PowerShell, Prolog, PureScript, R, Racket, Rust, Shell, Swift).
If a or b are nil (or null or None, depending on the language), the problem doesn't make sense so return false.
P
i: array 
o: boolean
explicit rules
return true if second array contains squares of the first array
E

D
A
return false if either array is empty or if either array is assigned to nil
sort both arrays
transform the values in array1 to each of their squares and assign to a new variable
compare transformed, sorted array1 to array2 and return the result
=end

def comp(array1, array2)
  if array1 == nil || array1 == [] || array2 == nil || array2 == []
    return false
  end
  sorted1 = array1.sort
  sorted2 = array2.sort
  squared1 = sorted1.map do |num|
    num ** 2
  end
  return true if squared1 == sorted2
  false
end

p comp([121, 144, 19, 161, 19, 144, 19, 11], [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19])
p comp([121, 144, 19, 161, 19, 144, 19, 11], [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 144*144])
p comp([], [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19])
p comp(nil, nil)