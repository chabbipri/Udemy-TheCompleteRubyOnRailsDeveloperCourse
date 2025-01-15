puts "What is your first name?"
first = gets.chomp

puts "What is your last name?"
last = gets.chomp

full_name = "#{first} #{last}"
name_length = first.length.to_i + last.length.to_i

puts "Your full name is #{full_name}"
puts "Your full name reversed is #{full_name.reverse}"
puts "Your full name has #{name_length} in it"
