# Source : https://leetcode.com/problems/squares-of-a-sorted-array/
# Author : Quilleran Cronwall
# Date   : 2022-02-25
#******************************************************************

=begin
INSTRUCTIONS:
Given an integer array nums sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.

Example 1:

Input: nums = [-4,-1,0,3,10]
Output: [0,1,9,16,100]
Explanation: After squaring, the array becomes [16,1,0,9,100].
After sorting, it becomes [0,1,9,16,100].

=end

# The algorithm acheives O(n) time complexity
# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
  result = []
  l = 0
  r = nums.length - 1
  while l <= r do
    if nums[l] * nums[l] > nums[r] * nums[r]
      result << (nums[l] * nums[l])
      l += 1
    else
      result << (nums[r] * nums[r])
      r -= 1
    end
  end
  return result.reverse
end

# Using two pointers, we solve the problem in reverse, starting from the largest numbers
