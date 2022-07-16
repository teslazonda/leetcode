# Source : https://leetcode.com/problems/combinations/
# Author : Quilleran Cronwall
# Date   : 2022-07-16
# ******************************************************************

# INSTRUCTIONS:
# Given two integers n and k, return all possible combinations of k numbers out of the range [1, n].
#
# You may return the answer in any order.
#
# Example 1:
#
# Input: n = 4, k = 2
# Output:
# [
#   [2,4],
#   [3,4],
#   [2,3],
#   [1,2],
#   [1,3],
#   [1,4],
# ]
#

# @param {Integer} n
# @param {Integer} k
# @return {Integer[][]}
def combine(n, k)
  (1..n).to_a.combination(k).to_a
end

# Using the combination method, we can write this solution in one line.
