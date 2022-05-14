# Source : https://leetcode.com/problems/two-sum/
# Author : Quilleran Cronwall
# Date   : 2022-05-09
#******************************************************************

"""
INSTRUCTIONS:
Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

Example 1:

Input: nums = [1,2,3,1]
Output: true

Example 2:

Input: nums = [1,2,3,4]
Output: false
"""
# The algorithm acheives O(n) time complexity


class Solution(object):
    def containsDuplicate(self, nums):
        numSet = list(set(nums))
        return not (len(numSet) == len(nums))
