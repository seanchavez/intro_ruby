# even or odd?
count = 1

loop do
  count.odd? ? (puts "#{count} is odd!") : (puts "#{count} is even!")
  break if count == 5
  count += 1
end

# catch the number
loop do
  number = rand(100)
  puts number
  break if number >= 0 && number <= 10
end

# conditional loop
loop do
  process_the_loop = [true, false].sample
  if process_the_loop 
    puts "The loop was processed!"
    break
   else
    puts "The loop wasn't processed!"
   end
end
 
# get the sum
loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct!"
    break
  else
    puts "Wrong answer. Try again!"
  end
end

# insert numbers
numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers.push(input)
  break if numbers.length == 5
end
puts numbers