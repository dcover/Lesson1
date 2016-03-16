def sum_int(num1, num2)
  num1 + num2
end

puts 'Enter the first number'
num1 = gets.chomp.to_i

puts 'Enter the second number'
num2 = gets.chomp.to_i
puts "The sum is: #{sum_int(num1, num2)}"
