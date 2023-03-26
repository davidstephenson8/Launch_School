def prompt(message)
  Kernel.puts(">> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

prompt("Welcome to calculator! Enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp

  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

loop do
  number1 = ''
  number2 = ''

  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp().to_i()
    if valid_number?(number1)
      break
    else
      prompt("Invalid number")
    end
  end

  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp().to_i()

    if valid_number?(number2)
      break
    else
      prompt("Invalid number")
    end
  end

  operator_prompt = <<-MSG
  What operation would you like to perform?
  addition
  subtraction
  multiplication
  division
  MSG

  operation = ''
  loop do
    prompt(operator_prompt)
    operation = Kernel.gets().chomp().downcase()
    if %w(addition subtraction division multiplication).include?(operation)
      break
    else
      prompt("Addition, subtraction, division or multiplication, please!")
    end
  end

  prompt("#{operation} is happening!")

  result = case operation
           when "subtraction"
             number1 - number2
           when "division"
             number1.to_f / number2.to_f
           when "addition"
             number1 + number2
           when "multiplication"
             number1 * number2
           end

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thanks for calculating, have a calculator-y day!")
