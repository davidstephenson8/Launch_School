require "pry"

class MinilangError < StandardError; end
class BadTokenError < MinilangError; end
class EmptyStackError < MinilangError; end

class Minilang
  COMMANDS = ["PUSH", "ADD", "SUB", "MULT", "DIV", "MOD", "POP", "PRINT"]

  def initialize(program)
    @register = 0
    @program = program.split
    @stack = []
  end

  def eval
    @program.each do |command|
      if command =~ /\A[-+]?\d+\z/
        @register = command.to_i
      elsif COMMANDS.include?(command)
        case command
        when "PUSH"
          @stack.push(@register)
        when "ADD"
          @register = @stack.pop + @register
        when "SUB"
          @register = @stack.pop - @register
        when "MULT"
          @register = @stack.pop * @register
        when "DIV"
          @register = @register / @stack.pop
        when "MOD"
          @register = @register % @stack.pop
        when "POP"
          if @stack.empty?
            raise EmptyStackError, "Stack is empty"
          end
          @register = @stack.pop
        when "PRINT"
          puts @register
        end
      else
       raise BadTokenError, "Invalid token: #{command}"
      end
      rescue MinilangError => error
        puts error.message
      end
  end
end

class EmptyStack < StandardError
  def initialize
    puts "the stack is empty!"
  end
end

class InvalidToken < StandardError
  def initialize
    puts "That's an invalid token!"
  end
end

# Minilang.new('PRINT').eval
# # 0

# Minilang.new('5 PUSH 3 MULT PRINT').eval
# # 15

# Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# # 5
# # 3
# # 8

# Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# # 10
# # 5

# Minilang.new('5 PUSH POP POP PRINT').eval
# # Empty stack!

# Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# # 6

# Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# # 12

# Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# # Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)
