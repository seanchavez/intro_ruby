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