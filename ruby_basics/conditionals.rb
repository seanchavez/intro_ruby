sun = ['visible', 'hidden'].sample
puts "The sun is so bright" if sun == 'visible'
puts "The clouds are blocking the sun!" unless sun == 'visible'

boolean = [true, false].sample
boolean ? (puts "I'm true") : (puts "I'm false")