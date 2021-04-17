arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# 1.
arr.each {|el| puts el}
# 2.
arr.each {|el| puts el if el > 5}
# 3.
new_arr = arr.select {|el| el.odd?}
new_arr.each {|el| puts el}
# 4.
arr << 11
arr.unshift 0
p arr
# 5.
arr.pop 
arr.push 3
p arr

# 6.
p arr.uniq
p arr 

# 8.
hash_1 = {hair: "black"}
p hash_1
hash_2 = {:eyes => "blue"}
p hash_2

# 9.
h = {a:1, b:2, c:3, d:4}
p h[:b]  # 1.
h[:e] = 5
p h  # 2.
h.delete_if {|k, v| v < 3.5}
p h  # 3.

# 10. -- yes
hash_3 = {array: arr}
p hash_3
hashes = [hash_1, hash_2, hash_3]
p hashes

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# 11. 
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1] 
contacts["Sally Johnson"][:phone] = contact_data[1][2]
p contacts

# 12.
puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]

# 13.
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|s| s.start_with?('s', 'w')}
p arr
  
# 14.
a = ['white snow', 'winter wonderland', 'melting ice',
  'slippery sidewalk', 'salted roads', 'white trees']

 p a.map {|s| s.split}.flatten

 # 15.
 # "These hashes are the same!"

 # 16.
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]
contacts.each do |_, hash|
  fields.each_with_index {|field, i| hash[field] = contact_data[i]}
end
p contacts

# bonus
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]
contacts.each_with_index do |(_, hash), i|
  fields.each_with_index {|field, j| hash[field] = contact_data[i][j]}
end

#names = contacts.keys
# contact_data.each_with_index do |data, i|
#   fields.each_with_index do |field, j|
#     contacts[names[i]][field] = data[j]
#   end
# end
  p contacts