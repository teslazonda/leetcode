# Source : https://leetcode.com/problems/path-sum/
# Author : Quilleran Cronwall
# Date   : 2022-02-16
#******************************************************************

=begin
INSTRUCTIONS:
Given the root of a binary tree and an integer targetSum, return true if the tree has a root-to-leaf path such that adding up all the values along the path equals targetSum.
A leaf is a node with no children.

Example 1:

Input: root = [5,4,8,11,null,13,4,7,2,null,null,null,1], targetSum = 22
Output: true
Explanation: The root-to-leaf path with the target sum is shown.

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
# @param {Integer} target_sum
# @return {Boolean}
def has_path_sum(root, target_sum)
  return false if root.nil?

  if root.left.nil? && root.right.nil?
    return target_sum == root.val
  end

  has_path_sum(root.left, target_sum - root.val) || has_path_sum(root.right, target_sum - root.val)
end

# Recursive approach. We subtract from target_sum each iteration to see if a final leaf node will be equal to the value of the target.
# Saves on memory not declaring a variable current_sum
