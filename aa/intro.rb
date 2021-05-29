def is_valid_name(str)
  return false if (names = str.split).size < 2
  names.each do |name| 
    return false if name[0] != name[0].upcase
    return false if name[1..-1] != name[1..-1].downcase
  end
  true
end

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false

def is_valid_email(str)
  parts = str.split("@")
  return false if parts.size != 2 || parts[1].count(".") != 1
  parts[0].each_char {|char| return false if !("a".."z").include?(char)}
  true
end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false

def reverse_words(sent)
  sent.split.map {|word| word.reverse}.join(" ")
end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'

def rotate_array(arr, num)
  num.times {arr.unshift(arr.pop)}
  arr
end

print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ]
puts