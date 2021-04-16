this_hash = {name: "godzilla"}
that_hash = {height: "tall"}
other_hash ={weight: "heavy"}

# merge returns a new hash that combine the contents of the  
# receiver and the contents of the given hashes.
new_hash = this_hash.merge that_hash, other_hash
puts "this_hash = " + this_hash.to_s
puts "new_hash = " + new_hash.to_s

# merge! adds the contents of the given hashes to the receiver
this_hash = {name: "king kong"}
new_hash = this_hash.merge! that_hash, other_hash
puts "this_hash = " + this_hash.to_s
puts "new_hash = " + new_hash.to_s

