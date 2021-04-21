def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

dividend = nil
loop do
  puts "Please enter the dividend:"
  dividend = gets.chomp
  break if valid_number?(dividend)
  puts "Invalid input. Integers only."
end
divisor = nil
loop do
  puts "Please enter the divisor:"
  divisor = gets.chomp
  if divisor == '0'
    puts "Invalid input. You can't divide by zero."
  else
    break if valid_number?(divisor)
    puts "Invalid input. Integers only."
  end
end
puts "#{dividend} / #{divisor} is #{dividend.to_i / divisor.to_i}"

