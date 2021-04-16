a_hash = {a: "ayy", b: "bee", c: "see"}
a_hash.each_key {|k| puts k}
a_hash.each_value {|v| puts v}
a_hash.each_pair {|k, v| puts "key: #{k}, value: #{v}"}