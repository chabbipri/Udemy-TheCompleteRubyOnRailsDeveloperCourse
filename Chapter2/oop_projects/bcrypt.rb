module Bcrypt
  require 'bcrypt'

  user_details = [
    { username: "Ruby1", password: "password1" },
    { username: "Ruby2", password: "password2" },
    { username: "Ruby3", password: "password3" },
    { username: "Ruby4", password: "password4" },
  ]

  def self.create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  def self.verify_hash_digest(password)
    BCrypt::Password.new(password)
  end

  def self.create_secure_passwords(user_details)
    user_details.each do |user|
      user[:password] = create_hash_digest(user[:password])
    end
  end

  bcrypt_list = create_secure_passwords(user_details)

  def self.authenticate_user(username, password, list_of_users)
    list_of_users.each do |user|
      if user[:username] == username && verify_hash_digest(user[:password]) == password
        return user
      end
    end
      "Invalid Credentials."
  end

  puts authenticate_user("Ruby1", "password1", bcrypt_list)
end
