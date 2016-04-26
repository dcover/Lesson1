def mess_with_varsA(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_varsA(one, two, three)
puts "***A***"
puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

def mess_with_varsB(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_varsB(one, two, three)
puts "***B***"
puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

def mess_with_varsC(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_varsC(one, two, three)
puts "***C***"
puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"