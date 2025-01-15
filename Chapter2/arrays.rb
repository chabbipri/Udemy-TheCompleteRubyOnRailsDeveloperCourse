# Normal Array

# Array
array = (1..10).to_a
p array

# Shuffle the array
shuffled_array = array.shuffle
p "The shuffled array of the array: #{array}"
20.times { print "-" }
puts
p shuffled_array

p "The variable array of the remains unshuffled as '!' isn't used."
20.times { print "-" }
puts
p array

fixed_shuffled_array = array.shuffle
p "The fixed shuffled array of the array: #{array}"
20.times { print "-" }
puts
p fixed_shuffled_array

# Insert an value 11 at the end of the array in the variable array
array << 11
p array

# unshift add value at the start of the array
p "unshift add value at the start of the array"
array.unshift("unshift")
p array

# append add value at the start of the array
p "append add value at the start of the array"
array.append("append")
p array

# unique
array << 1
p array
p array.uniq

# empty?
p array.empty?
p [].empty?

# include
p array.include?(1)

# push
p "Array before push #{array}"
p "Adding 17 at the last by push method"
p array.push(17)

# pop
p "Array before pop, removes the last element of the array"
p array.pop

# join
join_array = array.join("-")
p join_array

# .split
p join_array.split("-")

# %w
p %w[unshift-1-2-3-4-5-6-7-8-9-10-11-append-1]

# .each { inline }

array_2 = (1..20).to_a
array_2.each { |a| puts a }

# select
odd_numbers = array_2.select(&:odd?)
p odd_numbers
