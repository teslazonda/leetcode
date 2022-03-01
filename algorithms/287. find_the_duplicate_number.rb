# Source : https://leetcode.com/problems/find-the-duplicate-number/
# Author : Quilleran Cronwall
# Date   : 2022-03-01
#******************************************************************

=begin
INSTRUCTIONS:
Given an array of integers nums containing n + 1 integers where each integer is in the range [1, n] inclusive.
There is only one repeated number in nums, return this repeated number.
You must solve the problem without modifying the array nums and uses only constant extra space.

Example 1:

Input: nums = [1,3,4,2,2]
Output: 2

=end

# The algorithm acheives O(n) time complexity and O(1) space complexity
# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
    slow = 0
    fast = 0
    while true do
        slow = nums[slow]
        fast = nums[nums[fast]]
        if slow ==fast
            break
        end
    end
    slow2 = 0
    while true do
        slow = nums[slow]
        slow2 = nums[slow2]
        if slow == slow2
            return slow
        end
    end
end

# This is a linked list problem. We look for the beginning of cycles in the linked list which will give us the duplicate number
# Use Floyd's algorithm to find the beginning of the cycle
# Great video explanation here: https://www.youtube.com/watch?v=wjYnzkAhcNk
