=begin
==============
Problem

given a collection of spelling blocks, determine if a word is able to be spelled using each block only once
------------------------
-  Inputs: word
-  Output: boolean
---
** Rules **
Explicit
1. each block contains two letters
2. each block can only be used once
3. 

Implicit
1. 
2.
3.


---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: "BATCH"
  -  Output: true
-  Example 2
  -  Inputs: "BUTCH"
  -  Output: false
---
Modelling/Scratch Pad
--------------------------------------------------

hash of [block1, block2] => true

--------------------------------------------------
Data Structures
--------------

hashes, arrays
---
Algorithm
---------
set variable `characters` to given string split up into characters in an array
create hash of keys as letters on block, values as true
iterate through characters
  iterate through the keys in the hash
    if one of the keys contains the character check its value
      if true, change to false
      if false, return false
return true
=end

def can_blocks_spell_it?(string)
  blocks = {["B", "O"] => true, ["X", "K"] => true, ["D", "Q"] => true, ["C", "P"] => true, ["N", "A"] => true,
    ["G", "T"] => true, ["R", "E"] => true, ["F", "S"] => true, ["J", "W"] => true, ["H", "U"] => true, 
    ["V", "I"] => true, ["L", "Y"] => true, ["Z", "M"] => true}
  characters = string.chars
  characters.each do |char|
    blocks.keys.each do |key|
      if key.include?(char || char.downcase)
        if blocks[key] == false
          return false
        else
          blocks[key] = false
        end
      end
    end
  end
  true
end

p can_blocks_spell_it?("BATCH")
p can_blocks_spell_it?("BUTCH")
p can_blocks_spell_it?("jest")
  
