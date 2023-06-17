=begin
==============
Problem

take a string with substring "WUB" before, the string, in between words and after words, and return the string without any 
"WUB"s in it. 
------------------------
-  Inputs: string with wubs. Uppercase letters only. 
-  Output: string without wubs
---
** Rules **
Explicit
1. return string without any WUBs
2. only u
3. 

Implicit
1. elements that aren't "WUB" will be joined with a space
2. 
3.


---
Examples 
----------------------------------
**Examples:**
-  Example 1
  -  Inputs: 
  -  Output: 
-  Example 2
  -  Inputs: 
  -  Output: 
---
Modelling/Scratch Pad
--------------------------------------------------



--------------------------------------------------
Data Structures
--------------


---
Algorithm
---------

=end

def song_decoder(song)
  words = song.split("WUB")
  words.select! do |word|
    word != ""
  end
  words.join(" ")
end

p song_decoder("WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB")  == "WE ARE THE CHAMPIONS MY FRIEND"
p song_decoder("AWUBBWUBC") == "A B C"
p song_decoder("AWUBWUBWUBBWUBWUBWUBC") == "A B C"
p song_decoder("WUBAWUBBWUBCWUB") == "A B C"