# String Concatenation
sentence = "My Name is Priyanka"
puts sentence

sentence_2 = "My last name is Chabbi"
puts sentence_2

# With the double quote that is "" we can the do string Concatenation and not with the ''

puts "My name is #{first_name} #{last_name}"
# Output : My name is #{first_name} #{last_name}

first_name = "Priyanka"
last_name = "Chabbi"
puts "My name is #{first_name} #{last_name}"
# Output : My name is Priyanka Chabbi

# String Interpolation
full_name = "#{first_name} #{last_name}"
puts "My name is #{full_name}"
# Output : My name is Priyanka Chabbi

# Methonds, How to find methods
first_name = "Priyanka"
first_name.class # String

# Common Methods
first_name.methods # List of methods that can be used is listed. Example: to_s, .uppercase, etc

# Variable Assignment
new_first_name = "Prateek"

# Escaping
puts "The new first name is #{new_first_name}" # "The new first name is '\#{new_first_name}'"
p "Prateek asked 'How are you doing?'"

# Input from the user.
puts "What is the first name from the User?"
first_name = gets.chomp
puts "What is the last name from the User?"
last_name = gets.chomp

puts "The name of the User is #{first_name} #{last_name}"
