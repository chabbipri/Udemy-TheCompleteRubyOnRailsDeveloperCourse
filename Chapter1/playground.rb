# Puts and p adds a new line after the statment by default.
puts "Hello World!!!"
p "Hello World!!!"

# Print doesn't add new line at the end of the sentence.
print "Hello World!!!"

def say_hello
  puts "Hello Worlds"
end

say_hello

def say_hello(string)
  puts string
end

say_hello("I will get a 150K JOB")
