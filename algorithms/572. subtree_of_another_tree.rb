# Source : https://leetcode.com/problems/subtree-of-another-tree/
# Author : Quilleran Cronwall
# Date   : 2022-02-23
#******************************************************************

=begin
INSTRUCTIONS:
Given the roots of two binary trees root and subRoot, return true if there is a subtree of root with the same structure and node values of subRoot and false otherwise.
A subtree of a binary tree tree is a tree that consists of a node in tree and all of this node's descendants. The tree tree could also be considered as a subtree of itself.

Example 1:

Input: root = [3,4,5,1,2], subRoot = [4,1,2]
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
# @param {TreeNode} root
# @param {TreeNode} sub_root
# @return {Boolean}
def is_subtree(root, sub_root)
  return true if is_same(root, sub_root)
  return false if root.nil?
  return true if is_subtree(root.left, sub_root) || is_subtree(root.right, sub_root)
  false
end

def is_same(root, sub_root)
  return true if root == nil && sub_root==nil
  return false if root == nil && sub_root!= nil
  return false if root != nil && sub_root == nil
  return false if root.val != sub_root.val
  return is_same(root.left, sub_root.left) && is_same(root.right, sub_root.right)
end

# Solving the same tree leetcode problem prior to this question is a great help.
# Great video explanation here: https://www.youtube.com/watch?v=E36O5SWp-LE
