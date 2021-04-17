strings = ["laboratory", "experiment", "Pans Labyrnith", "elaborate", "polar bear"]

matches = strings.select {|s| s =~ /lab/}
if matches.length > 0 
  matches.each {|m| puts m}
else
  puts "no matches"
end