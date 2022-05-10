# Source : https://leetcode.com/problems/same-tree/
# Author : Quilleran Cronwall
# Date   : 2022-02-15
#******************************************************************

=begin
INSTRUCTIONS:
Given the roots of two binary trees p and q, write a function to check if they are the same or not.
Two binary trees are considered the same if they are structurally identical, and the nodes have the same value.

Example 1:

Input: p = [1,2,3], q = [1,2,3]
Output: true

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
# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
  if !p && !q
    return true
  end
  if !p || !q || p.val != q.val
    return false
  end
  is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right)
end

# DFS approch, traversing the tree in order
