def score_of_string(s)
  i = 1
  score = 0
  while i < s.length
      score += (s[i-1].ord-s[i].ord).abs
      i+=1
  end
  score
end
#calculate absolute difference between consecutive strings