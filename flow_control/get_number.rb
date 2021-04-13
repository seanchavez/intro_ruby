print "Enter a number between 0 and 100: "
num = gets.chomp.to_i
if num >= 0 && num <= 50
  puts "Number is between 0 and 50 (inclusive)"
elsif num >= 51 && num <= 100
  puts "Number is between 51 and 100 (inclusive)"
else
  puts "Number must be between 0 and 100 (inclusive)"
end