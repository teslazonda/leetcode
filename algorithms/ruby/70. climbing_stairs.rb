# Source : https://leetcode.com/problems/climbing-stairs/
# Author : Quilleran Cronwall
# Date   : 2022-02-02
#******************************************************************

=begin
You are climbing a staircase. It takes n steps to reach the top.
Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

Example 1:

Input: n = 2
Output: 2
Explanation: There are two ways to climb to the top.
1. 1 step + 1 step
2. 2 steps

=end

# The algorithm acheives O(n) time complexity
# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  one = 1
  two = 1
  (n - 1).times do
    temp = one
    one = one + two
    two = temp
  end
  one
end

# It's best to think of this problem in reverse.
# We essentially use the fibonacci sequence starting with 1 and 2 and work our way down the staircase
