def can_construct(s, k)
  return false if k > s.length
  return true if k == s.length

  char_counts = Hash.new(0)
  s.chars.each do |char|
      char_counts[char] += 1
  end
  
  # if odd frequency characters less than k -> return true
  char_counts.values.select{ |num| num.odd? }.count <= k ? true : false
end