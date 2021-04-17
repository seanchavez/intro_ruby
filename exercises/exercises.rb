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
