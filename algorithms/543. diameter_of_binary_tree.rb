# Source : https://leetcode.com/problems/diameter-of-binary-tree/
# Author : Quilleran Cronwall
# Date   : 2022-01-31
#******************************************************************

=begin
INSTRUCTIONS:
Given the root of a binary tree, return the length of the diameter of the tree.
The diameter of a binary tree is the length of the longest path between any two nodes in a tree. This path may or may not pass through the root.
The length of a path between two nodes is represented by the number of edges between them.

Example 1:

Input: root = [1,2,3,4,5]
Output: 3
Explanation: 3 is the length of the path [4,2,1,3] or [5,2,1,3].

=end

# The algorithm acheives O(n) time complexity
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def diameter_of_binary_tree(root)
  if root.nil?
    return 0
  end

  @res = 0

  def dfs(root)
    return -1 if root.nil?

    left = dfs(root.left)
    right = dfs(root.right)
    @res = [@res, (2 + left + right)].max
    return 1 + [left, right].max
  end

  dfs(root)
  return @res
end

# Nil trees have a value of -1, so we must add 2 on each iteration of recursion when comparing to the running total.
