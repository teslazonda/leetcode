# Source : https://leetcode.com/problems/invert-binary-tree/
# Author : Quilleran Cronwall
# Date   : 2022-02-24
#******************************************************************

=begin
INSTRUCTIONS:
Given the root of a binary tree, invert the tree, and return its root.

Example 1:

Input: root = [4,2,7,1,3,6,9]
Output: [4,7,2,9,6,3,1]

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
# @return {TreeNode}
def invert_tree(root)
  if root.nil?
    return nil
  end
  tmp = root.left
  root.left = root.right
  root.right = tmp
  invert_tree(root.left)
  invert_tree(root.right)
  return root
end

# Recursively switch left and right children for all nodes in the tree
