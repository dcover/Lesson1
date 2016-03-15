
#answer = Kernel.gets()
#Kernel.puts(answer)

Kernel.puts("Welcome to Calculator!")

Kernel.puts("Whats the first whole number?")
number1=Kernel.gets().chomp().to_i

Kernel.puts("Whats the second whole number?")
number2=Kernel.gets().chomp().to_i

Kernel.puts("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator=Kernel.gets().chomp().to_i

if operator==1
  puts("Add")
  result=number1+number2
elsif operator==2
  puts("Subtract")
  result=number1-number2
elsif operator==3
  puts("Multiply")
  result=number1*number2
elsif operator==4
  puts("Divide")
  result=number1.to_f/number2.to_f
end

Kernel.puts("The result is #{result}")