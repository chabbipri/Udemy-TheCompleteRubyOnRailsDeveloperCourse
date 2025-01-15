def calculate(operation, n1, n2)
  case operation
  when "Add"
    n1 + n2
  when "Sub"
    n1 - n2
  when "Mul"
    n1 * n2
  when "Div"
    n1 % n2
  when "Mod"
    n1 / n2
  end
end

20.times { print "-" }
puts

puts "Simple Calculator."

20.times { print "-" }
puts

puts "Which of the operation you want to do today?"
puts "1. For Addition enter add"
puts "2. For Subtraction enter sub"
puts "3. For Multiplication enter mul"
puts "4. For Division enter div"
puts "5. For Modulus enter mod"
20.times { print "-" }
puts

operation = gets.chomp

puts "Enter the first number."
first_number = gets.chomp
n1 = first_number.to_i

puts "Enter the second number."
second_number = gets.chomp
n2 = second_number.to_i

output = calculate(operation.capitalize, n1, n2)

puts "The #{operation} of #{first_number} and #{second_number} is #{output}."
