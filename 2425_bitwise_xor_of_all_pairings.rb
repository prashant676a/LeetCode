def xor_all_nums(nums1, nums2)
  len1, len2 = nums1.length, nums2.length
  freq = Hash.new(0)
  nums1.each do |num|
      freq[num] = freq[num] + len2
  end
  nums2.each do |num|
      freq[num] = freq[num] + len1
  end

  ans = 0
  freq.each do |key, value|
      ans ^= key if value.odd?
  end
  ans
end