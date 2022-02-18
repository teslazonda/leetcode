# Source : https://leetcode.com/problems/maximum-depth-of-binary-tree/
# Author : Quilleran Cronwall
# Date   : 2022-02-17
#******************************************************************

=begin
INSTRUCTIONS:
Given the root of a binary tree, return its maximum depth.
A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

Example 1:

Input: root = [3,9,20,null,null,15,7]
Output: 3

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
def max_depth(root)
    if root.nil?
        return 0
    end
    return 1 + [max_depth(root.left), max_depth(root.right)].max
end

# Recursive DFS traversal. We add 1 to begin recursion after the root node. 