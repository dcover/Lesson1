
def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to Calculator! Please enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp()

  unless name.empty?()
    prompt("Make sure to enter your name.")
    break
  end
end

prompt("Hi #{name}!")

loop do
  number1 = ''
  loop do
    prompt("Whats the first whole number?")
    number1 = Kernel.gets().chomp().to_i

    break if valid_number?(number1)
    prompt("Hmm... does not seem valid.")
  end

  number2 = ''
  loop do
    prompt("Whats the second whole number?")
    number2 = Kernel.gets().chomp().to_i

    break if valid_number?(number2)
    prompt("Hmm... does not seem valid.")
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    break if %w(1 2 3 4).include?(operator)
    prompt("Must choose 1,2,3 or 4")
  end
  prompt("#{operation_to_message(operator)} the numbers...")

  result = case operator
           when '1'
             number1 + number2
           when '2'
             number1 - number2
           when '3'
             number1 * number2
           when '4'
             number1.to_f / number2.to_f
           end

  prompt("The result is #{result}")
  prompt("Do you want to perform another calcuation? (Y to run again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the calculator.")
