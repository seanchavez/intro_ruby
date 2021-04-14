loop do
  puts "Type anything or QUIT:"
  input = gets.chomp
  if input.upcase == "QUIT"
    puts "You quit"
    break
  else
    puts(input)
  end
end