# Source : https://leetcode.com/problems/two-sum/
# Author : Quilleran Cronwall
# Date   : 2022-01-31
#******************************************************************

=begin
INSTRUCTIONS:
Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.

Example 1:

Input: nums = [3,0,1]
Output: 2
Explanation: n = 3 since there are 3 numbers, so all numbers are in the range [0,3]. 2 is the missing number in the range since it does not appear in nums.

=end

# The algorithm acheives O(1) space complexity
# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  length = nums.length
  return (0..length).sum - nums.sum
end

# Since we know only one number is missing, simple subtraction is the fasest solution
