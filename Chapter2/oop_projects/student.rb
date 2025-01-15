require_relative 'bcrypt'

class Student
  attr_accessor :first_name, :last_name, :username, :email, :password

  def initialize(first_name, last_name, username, email, password)
    @first_name = first_name
    @last_name = last_name
    @username = username
    @email = email
    @password = password

    def to_s
      "First name: #{first_name}, Last name: #{last_name} and Email is : #{email}"
    end
  end
end

ruby = Student.new("Ruby", "Rails", "ror", "ror1@example.com", "password")
ruby2 = Student.new("Ruby2", "Rails2", "ror2", "ror2@example.com", "password")

ruby_password = Bcrypt.create_hash_digest(ruby.password)
puts ruby_password


