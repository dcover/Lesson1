ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

if ages.key?("Spot") == false
  puts "Spot's age not listed"
else
  puts "Spot's age is listed"
end

puts "*******"

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
puts ages.values.inject(:+)


puts "*******"

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.keep_if { |name, age| age < 100 }
puts ages