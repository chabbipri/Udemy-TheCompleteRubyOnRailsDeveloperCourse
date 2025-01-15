require "pry"

USERDETAILS = [
  { username: "Ruby1", password: "password1" },
  { username: "Ruby2", password: "password2" },
  { username: "Ruby3", password: "password3" },
  { username: "Ruby4", password: "password4" },
]

def auth_user(username, password)
  USERDETAILS.each do |user|
    return username if user[:username] == username.capitalize && user[:password] == password.downcase
  end
end

puts "Welcome to the authenticator, enter the following details."
25.times { print "---" }
puts

attempts = 1

while attempts < 4
  print "Username:"
  user = gets.chomp
  puts

  print "Password:"
  password = gets.chomp
  puts

  if auth_user(user, password) == user
    puts "Credentials are correct for the #{user}"
    break
  else
    puts "Credentials are not correct."
    puts
    puts "Enter n to quit, and any other key to continue."
    input = gets.chomp
    break if input.downcase == "n"
  end

  attempts += 1
end

puts "You have maxed out your attempts" if attempts == 4
