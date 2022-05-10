# Source : https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/
# Author : Quilleran Cronwall
# Date   : 2022-02-21
#******************************************************************

=begin
INSTRUCTIONS:
Given a binary search tree (BST), find the lowest common ancestor (LCA) of two given nodes in the BST.
According to the definition of LCA on Wikipedia: “The lowest common ancestor is defined between two nodes p and q as the lowest node in T that has both p and q as descendants (where we allow a node to be a descendant of itself).”

Example 1:

Input: root = [6,2,8,0,4,7,9,null,null,3,5], p = 2, q = 8
Output: 6
Explanation: The LCA of nodes 2 and 8 is 6.

=end

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end
# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
  cur = root
  while cur do
    if p.val > cur.val && q.val > cur.val
      cur = cur.right
    elsif p.val < cur.val && q.val < cur.val
      cur = cur.left
    else
      return cur
    end
  end
end

# Since we are using a Binary search tree, we know that values to the left of the root will be less than the value of the root node.
# Check out this video for a great explanation: https://www.youtube.com/watch?v=gs2LMfuOR9k
