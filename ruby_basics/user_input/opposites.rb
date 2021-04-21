def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

int_1 = int_2 = nil
loop do
  int_str_1 = nil
  loop do
    puts "Please enter a positive or negative integer:"
    int_str_1 = gets.chomp
    break if valid_number?(int_str_1)
    puts "Invalid input. Only non-zero integers are allowed."  
  end
  int_str_2 = nil
  loop do
    puts "Please enter a positive or negative integer:"
    int_str_2 = gets.chomp
    break if valid_number?(int_str_2)
    puts "Invalid input. Only non-zero integers are allowed." 
  end
  int_1 = int_str_1.to_i
  int_2 = int_str_2.to_i
break if !(int_1.positive? && int_2.positive? ||  
           int_1.negative? && int_2.negative?)
  puts "Sorry. One integer must be positive, one must be negative."
  puts "Please start over."
end
puts "#{int_1} + #{int_2} = #{int_1 + int_2}"
