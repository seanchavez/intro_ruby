pets = ['cat', 'dog', 'fish', 'lizard']
my_pet = pets[pets.index('fish')]
puts "I have a pet #{my_pet}!"

pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets.select {|pet| pet == 'fish' || pet == 'lizard'}
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"
puts other_pets = pets[0..1]

pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop
my_pets << pets[1]
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

colors = ['red', 'yellow', 'purple', 'green']
colors.each {|color| puts "I'm the color #{color}!"}

numbers = [1, 2, 3, 4, 5]
doubled_numbers = numbers.map {|num| num * 2}
p doubled_numbers

numbers = [5, 9, 21, 26, 39]
divisible_by_three = numbers.select {|num| num % 3 == 0}
p divisible_by_three