# Hash with =>, that where the key is string
string_hash = { "name" => "Ruby", "last" => "Rails", "color" => "red" }
p string_hash
puts

# Hash via symbol for the key
symbol_hash = { a: 1, b: "String", c: 2, d: 3 }
p symbol_hash
puts

# Access the vaules via key
puts string_hash["name"]
puts symbol_hash[:a]
puts

# List of values only
puts "The values of string_hash is #{string_hash.values}."
puts "The values of symbol_hash is #{symbol_hash.values}."
puts

# list of keys only
puts "The keys of string_hash is #{string_hash.keys}."
puts "The keys of symbol_hash is #{symbol_hash.keys}."
puts

# Hash with symbols, print the class of the keys and values
symbol_hash.each do |key, val|
  puts "The key is #{key} and value is #{val}"
  puts
end
puts

# Hash with string i.e => , print the class of the keys and values
puts(symbol_hash.select { |_key, val| val.is_a?(String) })
puts(symbol_hash.select { |_key, val| val.is_a?(Integer) })

# Add additional value at the end to the existing hash via string and symbol both.
string_hash["color"] = "pink"
symbol_hash[:color] = "pink"

# Iterate through the hash with in-line key and value.
string_hash.each { |k, v| puts "The key is #{k} and the value is #{v}." }

# Use the select method.
puts symbol_hash
puts(symbol_hash.select { |_k, v| v == "pink" })

# Use the delete method. If we delete the key the value will also be created.
symbol_hash.delete(:a)
puts symbol_hash
