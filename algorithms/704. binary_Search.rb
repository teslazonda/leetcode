# Source : https://leetcode.com/problems/binary-search/
# Author : Quilleran Cronwall
# Date   : 2022-02-13
#******************************************************************

=begin
INSTRUCTIONS:
Given an array of integers nums which is sorted in ascending order, and an integer target, write a function to search target in nums. If target exists, then return its index. Otherwise, return -1.
You must write an algorithm with O(log n) runtime complexity.

Example 1:

Input: nums = [-1,0,3,5,9,12], target = 9
Output: 4
Explanation: 9 exists in nums and its index is 4

=end

# The algorithm acheives O(log n) time complexity
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  l = 0
  r = nums.length - 1
  while l <= r do
    mid = (l + r)/2
    if nums[mid] == target
        return mid
    elsif nums[mid] < target
        l = mid + 1
    else
        r = mid - 1
    end
  end
  return -1
end

# We cut the array in half each time we calculate a new mid point.
# Move the pointers according to whether the target is greater or less than current midpoint.
