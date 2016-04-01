flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
puts flintstones

puts "*****"

flintstones = %w(Fred Barney Wilman Better BamBam Pebbles)
puts flintstones

puts "*****"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"

puts flintstones

puts "*****"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push("Dino").push("Hoppy")

puts flintstones

puts "*****"

advice = "Few things in life are as important as house training your pet dinosaur."
puts advice.slice!(0, advice.index('house'))

puts "*****"

statement = "The Flintstones Rock!"
puts statement.scan('t').count

puts "*****"

title = "Flintstone Family Members"
puts title.center(40)

puts "*****"

10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

puts "*****"

statement = "The Flintstones Rock"

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

puts result