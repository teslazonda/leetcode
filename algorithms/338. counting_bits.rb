# Source : https://leetcode.com/problems/counting-bits/
# Author : Quilleran Cronwall
# Date   : 2022-02-06
#******************************************************************

=begin
INSTRUCTIONS:
Given an integer n, return an array ans of length n + 1 such that for each i (0 <= i <= n),
ans[i] is the number of 1's in the binary representation of i.

Example 1:

Input: n = 2
Output: [0,1,1]
Explanation:
0 --> 0
1 --> 1
2 --> 10

=end

# @param {Integer} n
# @return {Integer[]}
def count_bits(n)
  counter = n + 1
  offset = 1
  arr = Array.new(counter, 0)
  (1...counter).each do |i|
    if offset * 2 == i
      offset = i
    end
    arr[i] = 1 + arr[i - offset]
  end
  arr
end

# Here's a great video that explains the problem: https://youtu.be/RyBM56RIWrM
