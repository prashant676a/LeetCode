def count_prefix_suffix_pairs(words)
  count = 0
  (0...(words.length-1)).each do |i|
      ((i+1)...words.length).each do |j|
          if isPrefixAndSuffix(words[i], words[j])
              count += 1
          end
      end 
  end
  count
end

def isPrefixAndSuffix(str1, str2)
  str2.start_with?(str1) && str2.end_with?(str1)
end