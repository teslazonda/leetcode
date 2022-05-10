# Source : https://leetcode.com/problems/single-number/
# Author : Quilleran Cronwall
# Date   : 2022-02-01
#******************************************************************

=begin
INSTRUCTIONS:
Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
You must implement a solution with a linear runtime complexity and use only constant extra space.

Example 1:

Input: nums = [2,2,1]
Output: 1

=end

# The algorithm acheives O(n) time complexity
# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  hash = Hash.new(0)
  nums.each do |element|
    hash[element] += 1
    if hash[element] >= 2
      hash.delete(element)
    end
  end
  hash.keys[0]
end

# Store the number of occurences of a number in a hash. If that number > 2 delete it. We are left with the answer.
