require_relative 'bcrypt'

  user_details = [
    { username: "Ruby1", password: "password1" },
    { username: "Ruby2", password: "password2" },
    { username: "Ruby3", password: "password3" },
    { username: "Ruby4", password: "password4" },
  ]

  auth_users = Bcrypt.create_secure_passwords(user_details)
  puts auth_users