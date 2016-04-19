def test_objid
  a_outer = 42
  b_outer = "forty two"

  a_outer_id = a_outer.object_id
  b_outer_id = b_outer.object_id

  puts "a_outer_id is: #{a_outer_id} "
  puts "b_outer_id is: #{b_outer_id}"

end

puts test_objid