# Source : https://leetcode.com/problems/two-sum/
# Author : Quilleran Cronwall
# Date   : 2022-01-31
#******************************************************************

=begin
INSTRUCTIONS:
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
You may assume that each input would have exactly one solution, and you may not use the same element twice.
You can return the answer in any order.

Example 1:

Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

=end

# The algorithm acheives O(n) time complexity
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |num, index|
    if nums[target - num]
      return hash[target - num],index
    else
      hash[num] = index
    end
  end
end

# By storing values and indexes in a hash, we save on lookup times.
# Iterating over the array, we check if the current value will sum to target with any numbers stored in the hash.
