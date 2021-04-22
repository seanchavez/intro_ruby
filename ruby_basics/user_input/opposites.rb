def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def get_input
  loop do
    puts "Please enter a positive or negative integer:"
    input = gets.chomp
    return input.to_i if valid_number?(input)
    puts "Invalid input. Only non-zero integers are allowed."  
  end
end

int_1 = int_2 = nil
loop do
  int_1 = get_input
  int_2 = get_input
break if int_1 * int_2 < 0
  puts "Sorry. One integer must be positive, one must be negative."
  puts "Please start over."
end
puts "#{int_1} + #{int_2} = #{int_1 + int_2}"
