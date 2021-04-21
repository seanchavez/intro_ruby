loop do
  lines = nil
  loop do
    puts "How many output lines do you want? Enter a number >= 3 (Q to quit):"
    lines = gets.chomp
    return if lines.downcase == 'q'
    lines = lines.to_i
    break if lines >= 3
    puts "That's not enough lines."
  end
  lines.times {puts "Launch School is the best!"}
end