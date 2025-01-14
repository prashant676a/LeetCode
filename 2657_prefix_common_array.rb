def find_the_prefix_common_array(a, b)
  prefix_common_array = Array.new(a.length, 0)
  frequency = Array.new(a.length+1, 0)
  common_count = 0

  (0..a.length-1).each do |current_index|
      frequency[a[current_index]] += 1
      common_count += 1 if frequency[a[current_index]] == 2

      frequency[b[current_index]] += 1
      common_count += 1 if frequency[b[current_index]] == 2

      prefix_common_array[current_index] = common_count
  end

  prefix_common_array
end