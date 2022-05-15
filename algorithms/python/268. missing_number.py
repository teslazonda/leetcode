# Source : https://leetcode.com/problems/missing-number/
# Author : Quilleran Cronwall
# Date   : 2022-05-14
#******************************************************************

"""
INSTRUCTIONS:
Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.

Example 1:

Input: nums = [3,0,1]
Output: 2
Explanation: n = 3 since there are 3 numbers, so all numbers are in the range [0,3]. 2 is the missing number in the range since it does not appear in nums.

"""
# The algorithm acheives O(n) time complexity


class Solution:
    def missingNumber(self, n: List[int]) -> int:
        return len(n)*(len(n)+1)//2 - sum(n)
