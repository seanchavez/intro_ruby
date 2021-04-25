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
