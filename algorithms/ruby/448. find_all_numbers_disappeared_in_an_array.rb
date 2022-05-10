# Source : https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array/
# Author : Quilleran Cronwall
# Date   : 2022-02-01
#******************************************************************

=begin
Given an array nums of n integers where nums[i] is in the range [1, n], return an array of all the integers
in the range [1, n] that do not appear in nums.

Example 1:

Input: nums = [4,3,2,7,8,2,3,1]
Output: [5,6]

=end

# @param {Integer[]} nums
# @return {Integer[]}
def find_disappeared_numbers(nums)
  n = nums.length
  (1..n).to_a - nums
end

# In ruby we can subtract arrays, returning an array of elements unique to the larger array.
