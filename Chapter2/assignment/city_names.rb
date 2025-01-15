dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717",
}

def get_city_names(dial_book)
  dial_book.keys
end

def get_area_code(somehash, key)
  somehash[key]
end

loop do
  20.times { print "---" }
  puts
  puts "Do you want to look the pincode by city names?"
  puts "Enter Y/y to continue, or any other key to exit!"
  20.times { print "---" }
  puts

  input = gets.chomp

  break unless input.downcase == "y"

  puts "List of cities:"
  cities = get_city_names(dial_book)
  puts cities
  puts "Enter your selection:"

  city_name = gets.chomp

  if cities.include?(city_name)
    pin_code = get_area_code(dial_book, city_name.downcase)
    puts "Pincode: #{pin_code}"
  else
    puts "The city isn't on the list."
    puts
  end
end
