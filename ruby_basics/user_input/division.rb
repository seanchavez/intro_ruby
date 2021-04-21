def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

dividend = divisor = nil
loop do
  puts "Please enter the dividend:"
  dividend = gets.chomp
  break if valid_number?(dividend)
  puts "Integers only."
end
loop do
  puts "Please enter the divisor:"
  divisor = gets.chomp
  break if valid_number?(divisor)
  divisor == '0' ? (puts "You can't divide by zero") : (puts "Integers only.")
  puts "Integers only."
end
dividend = dividend.to_i
divisor = divisor.to_i
if divisor == 0
  puts "You can't divide by zero."
else 
  puts "#{dividend} / #{divisor} is #{dividend / divisor}"
end
