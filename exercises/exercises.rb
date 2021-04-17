arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# 1.
arr.each {|el| puts el}
# 2.
arr.each {|el| puts el if el > 5}
# 3.
new_arr = arr.select {|el| el.odd?}
