# Source : https://leetcode.com/problems/find-all-duplicates-in-an-array/
# Author : Quilleran Cronwall
# Date   : 2022-03-06
#******************************************************************

=begin
INSTRUCTIONS:
Given an integer array nums of length n where all the integers of nums are in the range [1, n] and each integer appears once or twice, return an array of all the integers that appears twice.
You must write an algorithm that runs in O(n) time and uses only constant extra space.

Example 1:

Input: nums = [4,3,2,7,8,2,3,1]
Output: [2,3]

=end

# The algorithm acheives O(n) time complexity and O(1) space complexity
# @param {Integer[]} nums
# @return {Integer[]}
def find_duplicates(nums)
  result = []
  nums.each do |num|
    num = num.abs
    if nums[num - 1] > 0
      nums[num - 1] *= -1
    else
      result << num
    end
  end
  result
end

# By negating duplicate numbers and checking numbers at that array index if they are negative,
# We can pick out which numbers are duplicates without using extra memory.
