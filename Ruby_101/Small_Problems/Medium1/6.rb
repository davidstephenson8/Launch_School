require "pry"

def push(stk, rgstr)
  stk << rgstr[0]
end

def PRINT(rgstr)
  puts rgstr
end

def minilang(string)
  stack = []
  register = 0
  commands = string.split(" ")
  commands.each do |command|
    if command.to_i != 0
      register = command.to_i
    elsif command == "PUSH"
      stack.push(register)
    elsif command ==  "ADD"
      register = stack.pop + register
    elsif command == "SUB"
      register = register - stack.pop
    elsif command == "MULT"
      register = stack.pop * register
    elsif command == "DIV"
      register = register / stack.pop
    elsif command == "MOD"
      register = register % stack.pop
    elsif command == "POP"
      register = stack.pop
    elsif command ==  "PRINT"
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