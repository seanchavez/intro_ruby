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

def unique_elements(arr)
  elements_seen = {}
  arr.each {|el| elements_seen[el] = true}
  elements_seen.keys
end

print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts

def element_replace(arr, hash)
  arr.map {|el| hash[el] ? hash[el] : el}
end

arr1 = ["LeBron James", "Lionel Messi", "Serena Williams"]
hash1 = {"Serena Williams"=>"tennis", "LeBron James"=>"basketball"}
print element_replace(arr1, hash1) # => ["basketball", "Lionel Messi", "tennis"]
puts

arr2 = ["dog", "cat", "mouse"]
hash2 = {"dog"=>"bork", "cat"=>"meow", "duck"=>"quack"}
print element_replace(arr2, hash2) # => ["bork", "meow", "mouse"]
puts

def most_vowels(sentence)
  word_to_vowel_count = {}
  sentence.split.each {|word| word_to_vowel_count[word] = word.count("aeiou")}
  word_to_vowel_count.reduce do |high_pair, pair| 
    pair.last > high_pair.last ? pair : high_pair
  end.first
end

p most_vowels("what a wonderful life") #=> "wonderful"

def prime?(num)
  return false if num < 2
  (2..num / 2).each {|n| return false if num % n == 0}
  true
end

puts prime?(2)  #=> true
puts prime?(5)  #=> true
puts prime?(11) #=> true
puts prime?(4)  #=> false
puts prime?(9)  #=> false
puts prime?(-5) #=> false
puts prime?(1)  #=> false

def greatest_factor_array(arr)
  arr.map {|num| num % 2 == 0 ? num / 2 : num}
end

print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
puts
print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
puts

def summation_sequence(start, length)
  seq = [start]
  while seq.size < length
    seq << seq[-1] * (seq[-1] + 1) / 2
  end
  seq
end


p summation_sequence(3, 4) # => [3, 6, 21, 231]
p summation_sequence(5, 3) # => [5, 15]

def caesar_cipher(str, num)
  encrypted = ""
  str.each_codepoint {|cp| (cp += num) > 'z'.ord ? encrypted << (cp - 26).chr : encrypted << cp.chr}
  encrypted
end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"

def vowel_cipher(string)
  string.tr("aeiou", "eioua")
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap

def double_letter_count(string)
  count = 0
  string.each_char.with_index {|c, i| count += 1 if c == string[i + 1]}
  count
end

puts double_letter_count("the jeep rolled down the hill") #=> 3
puts double_letter_count("bootcamp") #=> 1

def pyramid_sum(base)
  pyramid = [base]
  (base.length - 1).times {pyramid << adjacent_sum(pyramid[-1])}
  pyramid.reverse
end

def adjacent_sum(arr)
  sums = []
  (1...arr.length).each {|i| sums << arr[i] + arr[i - 1]}
  sums
end

p pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
p pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]

def consonant_cancel(sentence)
  vowel_s = "aeiou"
  sentence.split.map.with_index {|word, i| word[word.index(/[aeiou]/i)..-1]}.join(" ")
end

puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"

def same_char_collapse(str)
  chars = str.chars
  collapsible = true
  while collapsible
    collapsible = false
    chars.each_index do |i|
      if chars[i] == chars[i + 1]
        chars[i] = ""
        chars[i + 1] = ""
        collapsible = true
      end
    end
    chars = chars.join.chars if collapsible
  end
  chars.join
end

puts same_char_collapse("zzzxaaxy")   #=> "zy"
# because zzzxaaxy -> zxaaxy -> zxxy -> zy
puts same_char_collapse("uqrssrqvtt") #=> "uv"
# because uqrssrqvtt -> uqrrqvtt -> uqqvtt -> uvtt -> uv
puts same_char_collapse("zzzzzz") 