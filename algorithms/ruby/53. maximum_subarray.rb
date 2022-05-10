# Source : https://leetcode.com/problems/maximum-subarray/
# Author : Quilleran Cronwall
# Date   : 2022-02-05
#******************************************************************

=begin
INSTRUCTIONS:
Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.
A subarray is a contiguous part of an array.

Example 1:

Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
Output: 6
Explanation: [4,-1,2,1] has the largest sum = 6.

=end

# The algorithm acheives O(n) time complexity
# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  max = nums[0]
  curr_sum = 0
  nums.each do |num|
    if curr_sum < 0
      curr_sum = 0
    end
    curr_sum += num
    max = [max, curr_sum].max
  end
  max
end

# We reset the current sum to zero if it becomes negative, finding the sum of the greatest subarray thenceforth.
