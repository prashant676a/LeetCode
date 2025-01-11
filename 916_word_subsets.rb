def word_subsets(words1, words2)
  required_char_counts = Hash.new(0)
  words2.each do |word|
    word_char_counts = char_count(word)

    word_char_counts.each do |char, count|
      required_char_counts[char] = [required_char_counts[char], count].max
    end
  end

  words1.select do |word|
    word_char_counts =  

    output << word if required_char_counts.all? {|char, count| word_char_counts[char] >= count }
  end
end

def char_count(word)
  count = Hash.new(0)
  word.chars.each { |char| count[char] += 1 }
  count
end
