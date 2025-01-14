def minimum_length(s)
  char_frequency_hash = construct_hash(s)
  delete_count = 0
  char_frequency_hash.values.each do |frequency|
      if frequency.odd?
          delete_count += frequency - 1
      else
          delete_count += frequency - 2
      end
  end
  s.length - delete_count
end

def construct_hash(s)
  hash = Hash.new(0)
  s.chars.each do |char|
      hash[char] += 1
  end
  hash
end