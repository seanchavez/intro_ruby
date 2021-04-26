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
