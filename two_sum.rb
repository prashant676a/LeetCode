def two_sum(nums, target)
  remaining = {}

  nums.each_with_index do |num, index|
      complement = target - num

      if remaining.key?(complement)
          return [remaining[complement], index]
      end

      remaining[num] = index
  end
  
end

=begin

Example 1:

Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
Example 2:

Input: nums = [3,2,4], target = 6
Output: [1,2]
Example 3:

Input: nums = [3,3], target = 6
Output: [0,1]

=end
