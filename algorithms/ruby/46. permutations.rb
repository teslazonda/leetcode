# Source : https://leetcode.com/problems/permutations/
# Author : Quilleran Cronwall
# Date   : 2022-07-16
# ******************************************************************

# INSTRUCTIONS:
# Given an array nums of distinct integers, return all the possible permutations. You can return the answer in any order.
#
# Example 1:
#
# Input: nums = [1,2,3]
# Output: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]

# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
  return [] if nums.empty?
  return [nums] if nums.size == 1

  result = []
  nums.each do |num|
    l = permute(nums - [num])
    result += l.map { |i| [num] + i }
  end
  result
end
