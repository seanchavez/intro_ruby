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

def combinations(arr)
  pairs = []
  arr.each_with_index do |a, i|
    arr.each_with_index do |b, j|
      if j > i
        pairs << [a, b]
      end
    end
  end
  pairs
end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts
print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts
print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts
print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts

def opposite_count(nums)
  count = 0
  nums.each {|n| nums.each {|m| count += 1 if n + m == 0}}
  count / 2
end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1

def two_d_sum(arr)
  arr.flatten.reduce(:+)
end

array_1 = [
  [4, 5],
  [1, 3, 7, 1]
]
puts two_d_sum(array_1)    # => 21

array_2 = [
  [3, 3],
  [2],
  [2, 5]
]
puts two_d_sum(array_2)    # => 15

def two_d_translate(arr)
  trans_arr = []
  arr.each {|a| a.last.times {trans_arr << a.first}}
  trans_arr
end

arr_1 = [
  ['boot', 3],
  ['camp', 2],
  ['program', 0]
]

print two_d_translate(arr_1) # => [ 'boot', 'boot', 'boot', 'camp', 'camp' ]
puts

arr_2 = [
  ['red', 1],
  ['blue', 4]
]

print two_d_translate(arr_2) # => [ 'red', 'blue', 'blue', 'blue', 'blue' ]
puts

def array_translate(array)
  translation = ""
  array.each_index {|i| array[i].times {translation << array[i - 1]} if i.odd?}
  translation
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts

def pig_latin_word(word)
  vowel_s = "aeiou"
  if vowel_s.include?(word[0])
    return word + "yay"
  end
  word.each_char do |c| 
    return word[word.index(c)..-1] + word[0...word.index(c)] + "ay" if       vowel_s.include?(c)
    end
end

puts pig_latin_word("apple")   # => "appleyay"
puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"

def frequent_letters(string)
  frequency = Hash.new(0)
  string.each_char {|char| frequency[char] += 1}
  frequency.select {|_, v| v > 2}.keys
end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts