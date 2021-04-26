car = {type: 'sedan', color: 'blue', mileage: 80_000}
car[:year] = 2003

car.delete(:mileage)

puts car[:color]

numbers = {
  high:   100,
  medium: 50,
  low:    10
}
numbers.each {|k, v| puts "#{k} => #{v}"}

half_numbers = numbers.map {|_, num| num / 2}
p half_numbers

low_numbers = numbers.select {|_, num| num < 25}
p low_numbers
p numbers

low_numbers = numbers.select! {|_, num| num < 25}
p low_numbers
p numbers

vehicles = {
  car: {
    type: 'sedan',
    color: 'blue',
    year: 2003,
  },
  truck: {
    type: 'pickup',
    color: 'red',
    year: 1998,
  }
}
p vehicles

car = {
  type:  'sedan',
  color: 'blue',
  year:  2003
}
p car
car_arr = [[:type, 'sedan'],[:color, 'blue'],[:year, '2003']]
p car_arr