=begin
==============
Problem: 
return the nexus from a hash. The nexus is the person whos rank is closest to their honor. If there are multiple people tied, 
return the one at the lowest rank
------------------------
-  Inputs: hash
-  Output: integer (repesenting rank)
---
Explicit Rules
1.
2.
3.

Implicit Rules
1.
2.
3.

Examples:
-  Example 1
  -  Inputs: 
  -  Output: 
-  Example 2
  -  Inputs:
  -  Output:
---
---
Data Structure
--------------

---
Algorithm
---------
create a new hash with each pair of key/values associated with their absolute difference
convert this into an array assigned to `pair_differences`
initialize `smallest_differences` to an empty array
initialize smallest difference to difference in first pair
---
=end

def nexus(hash)
   = hash.min_by do |k, v|
    (k - v).abs 
  end
  minimum_pair[0]
end

p nexus({1 => 3, 3 => 3, 5 => 1}) == 3
p nexus({1 => 10, 2 => 6, 3 => 4, 5 => 1}) == 3
p nexus({1 => 10, 2 => 3, 3 => 4, 5 => 1}) == 2
