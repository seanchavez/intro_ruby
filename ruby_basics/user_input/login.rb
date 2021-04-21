USER_NAME = "Ada"
PASSWORD = "lOveLace"

loop do
  puts ">> Please enter user name:"
  input_user_name = gets.chomp
  puts ">> Please enter your password:"
  input_password = gets.chomp
  break if input_user_name == USER_NAME && input_password == PASSWORD
  puts ">> Authorization failed!"
end
puts "Welcome!"