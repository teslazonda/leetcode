# Source : https://leetcode.com/problems/contains-duplicate/
# Author : Quilleran Cronwall
# Date   : 2022-01-31
#******************************************************************

=begin
INSTRUCTIONS:
Given an integer array nums, return true if any value appears at least twice in the array,
and return false if every element is distinct.

Example 1:

Input: nums = [1,2,3,1]
Output: true

=end

# The algorithm acheives O(n) time complexity
# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  count_hash = Hash.new(0)
  nums.each do |num|
    count_hash[num] += 1
      if count_hash[num] >= 2
        return true
      end
  end
  false
end
