munsters_description = "The Munsters are creepy in a good way."

puts munsters_description.capitalize!
puts munsters_description.swapcase!
puts munsters_description.downcase!
puts munsters_description.upcase!

puts "******"

# hash

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

puts ages

puts "*****"

# minimum age

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
puts ages.values.min
