# Source : https://leetcode.com/problems/product-of-array-except-self/
# Author : Quilleran Cronwall
# Date   : 2022-02-28
#******************************************************************

=begin
INSTRUCTIONS:
Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].
The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
You must write an algorithm that runs in O(n) time and without using the division operation.

Example 1:

Input: nums = [1,2,3,4]
Output: [24,12,8,6]

=end

# The algorithm acheives O(n) time complexity
# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  result = []

  temp = 1
  nums.each_with_index do |item, index|
    result[index] = temp
    temp = temp * item
  end

  temp = 1
  count = nums.length-1
  while(count >= 0)
    result[count] = result[count]*temp
    temp = temp * nums[count]
    count -= 1
  end

  result
end
