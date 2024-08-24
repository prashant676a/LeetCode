def find_median_sorted_arrays(nums1, nums2)
  sorted = (nums1+nums2).sort
  puts sorted.length.even? ? (sorted[(sorted.length/2) - 1] + sorted[sorted.length/2]) / 2.to_f : sorted[sorted.length/2].to_f
end

#code to test
nums1 = [1,2]
nums2 = [3,4]
find_median_sorted_arrays(nums1, nums2)