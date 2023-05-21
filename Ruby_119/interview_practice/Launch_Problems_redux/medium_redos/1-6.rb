=begin
==============
Problem
create a language that 

------------------------
-  Inputs: a string with integers and commands 
-  Output: whatever the commands dictate
---
** Rules **
Explicit
1. initialize register to 0
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
  -  Inputs: '5 PUSH 3 MULT PRINT'
  -  Output: 15
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
initialize variable `register` to zero
initialize variable `stack` to empty array
split given string into separate commands in an array, store in variable `commands`
iterate through the commands array
  use a case statement
    if command is an integer, set register equal to that integer
    if command is PUSH add register number to stack
    if command is ADD, pop value from the stack and add it to register value, storing value as register
    if command is SUB, pop value from the stack and subtract it from register value, storing value as register
    if command is MULT, pop value from the stack and multiply it with register value, storing value as register
    if command is DIV, pop value from the stack and divide it into register value, storing value as register
    if command is MOD, pop value from the stack and divide it into register value, storing remainder in regiver
    if command is POP remove topmost value from stack and place it in register
    if command is PRINT print the register value
=end




def minilang(string)
  register = 0
  stack = []
  commands = string.split
  commands.each do |command|
    case command
    when "0".."9"
      register = command.to_i
    when "PUSH"
      stack << register
    when "ADD"
      register += stack.pop
    when "SUB"
      register -= stack.pop
    when "MULT"
      register *= stack.pop
    when "DIV"
      register /= stack.pop
    when "MOD"
      register %= stack.pop
    when "POP"
      register = stack.pop
    when "PRINT"
      puts register
    end
  end
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')