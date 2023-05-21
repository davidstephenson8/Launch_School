=begin
==============
Problem
read string content, return largest string

------------------------
-  Inputs: string
-  Output: largest sentence
---
** Rules **
Explicit
1. sentences are phrases that end in .!?
2. 
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

array
---
Algorithm
---------
get input text from file
split input text into an array of sentences
return the biggest sentence by size from the array

=end

text = File.read("frankenstein.txt")
sentences = text.split(/\.|\?|!/)
largest_sentence = sentences.max_by{|sentence| sentence.split.size}
p largest_sentence.strip