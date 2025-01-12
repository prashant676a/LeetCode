def can_be_valid(s, locked)
  return false if s.length.odd? # odd length cannot be balanced

  unlocked = []
  locked_open_brackets = []

  s.chars.each_with_index do |char,index| 
      if locked[index] == "0"
          unlocked.push(index)
      elsif char == "("
          locked_open_brackets.append(index)
      else
          if locked_open_brackets.any?
            locked_open_brackets.pop
          elsif unlocked.any?
            unlocked.pop
          else 
           return false
          end
      end
  end
  
  while locked_open_brackets.any? && unlocked.any? && locked_open_brackets.last < unlocked.last
    locked_open_brackets.pop
    unlocked.pop
  end

  locked_open_brackets.any? ? false : true
end