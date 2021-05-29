def is_valid_name(str)
  return false if (names = str.split).size < 2
  names.each do |name| 
    return false if name[0] != name[0].upcase
    return false if name[1..-1] != name[1..-1].downcase
  end
  true
end