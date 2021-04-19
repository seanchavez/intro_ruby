# runaway loop
loop do 
  puts 'Just keep printing...'
  break
end

# loopception
loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end
  break
end

puts 'This is outside all loops.'

# control the loop
iterations = 5

loop do
  puts "Number of iterations = #{iterations}"
  break if iterations <= 1
  iterations -= 1
end

#loop on command
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
end

# say hello
say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count == 5
end

# print while
 numbers = []

while numbers.length < 5
  numbers << rand(100)
end
puts numbers

# count up
count = 1

until count > 10
  puts count
  count += 1
end

# print until
numbers = [7, 9, 13, 25, 18]
count = 0
until count == numbers.length
  puts numbers[count]
  count += 1
end