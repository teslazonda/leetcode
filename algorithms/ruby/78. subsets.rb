# Source : https://leetcode.com/problems/subsets/
# Author : Quilleran Cronwall
# Date   : 2022-07-11
# ******************************************************************

# INSTRUCTIONS:
# Given an integer array nums of unique elements, return all possible subsets (the power set).
# The solution set must not contain duplicate subsets. Return the solution in any order.

# Example 1:

# Input: nums = [1,2,3]
# Output: [[],[1],[2],[1,2],[3],[1,3],[2,3],[1,2,3]]

# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
  ans = []
  (0..nums.size).each do |size|
    ans += nums.combination(size).to_a
  end
  ans
end

# We get the combinations of all array elements at each index and combine them into one array
