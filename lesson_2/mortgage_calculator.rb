def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  prompt("Welcome to  Mortgage Calculator!")
  prompt("--------------------------------")

  prompt("What is the loan amount?")

  amount = ''
  loop do
    amount = Kernel.gets().chomp()

    unless amount.empty?() || amount.to_f() < 0
      prompt("Must enter positive number.")
      break
    end
  end

  prompt("What is the interest rate?")
  prompt("(Example 5 for 5% or 2.5 for 2.5%)")

  interest_rate = ''
  loop do
    interest_rate = Kernel.gets().chomp()

    unless interest_rate.empty?() || interest_rate.to_f() < 0
      prompt("Must enter positive number.")
      break
    end
  end

  prompt("What is the loan duration in terms of years?")

  years = ''
  loop do
    years = Kernel.gets().chomp()

    unless years.empty? || years.to_i() < 0
      prompt("Enter a valid number")
      break
    end
  end

  annual_ir = interest_rate.to_f() / 100
  monthly_ir = annual_ir / 12
  months = years.to_i() * 12

  monthly_payment = amount.to_f() *
                    (monthly_ir /
                    (1 - (1 + monthly_ir)**-months.to_i()))

  prompt("Your monthly payment is: $#{format('%02.2f', monthly_payment)}")

  prompt("Another calculation?")
  answer = Kernel.gets().chomp()

  break unless answer.downcase().start_with?('y')
end
