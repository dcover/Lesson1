advice = "Few things in life are as important as house training your pet dinosaur."

if advice.match("Dino")
  puts "found"
else
  puts "not found"
end

puts "*******"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
puts flintstones.index { |name| name[0, 2] == "Be" }

puts "******"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |name|
  name[0, 3]
end

puts "******"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
puts flintstones.map! { |name| name[0,3] }
