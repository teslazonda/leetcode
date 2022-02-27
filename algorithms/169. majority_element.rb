# Source : https://leetcode.com/problems/majority-element/
# Author : Quilleran Cronwall
# Date   : 2022-02-27
#******************************************************************

=begin
INSTRUCTIONS:
Given an array nums of size n, return the majority element.
The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

Example 1:

Input: nums = [3,2,3]
Output: 3

=end

# The algorithm acheives O(n) time complexity and O(1) space complexity
# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  res = 0
  count = 0
  nums.each do |num|
    if count == 0
      res = num
    end
    if num == res
      count += 1
    else
      count -= 1
    end
  end
  res
end

# We employ the Boyer-Moore algorithm. Knowing that there must be a majority element,
# if there are elements other than the current they subtract from the count, and if the count reaches zero, we reassign the majority element.
