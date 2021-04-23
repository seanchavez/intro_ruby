sun = ['visible', 'hidden'].sample
puts "The sun is so bright" if sun == 'visible'
puts "The clouds are blocking the sun!" unless sun == 'visible'

boolean = [true, false].sample
boolean ? (puts "I'm true") : (puts "I'm false")

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green' then puts 'Go!'
when 'yellow' then puts 'Slow down!'
when 'red' then puts 'Stop!'
end

if stoplight == 'green' 
  puts 'Go!'
elsif stoplight == 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end

status = ['awake', 'tired'].sample
response = if status == 'awake' then 'Be productive!' else 'Go to sleep!' end
puts response  

number = rand(10)

if number == 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green' then puts 'Go!'
  
when 'yellow' then puts 'Slow down!'
  
else puts 'Stop!'
  
end