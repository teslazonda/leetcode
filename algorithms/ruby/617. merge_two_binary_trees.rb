# Source : https://leetcode.com/problems/merge-two-binary-trees/
# Author : Quilleran Cronwall
# Date   : 2022-02-20
#******************************************************************

=begin
You are given two binary trees root1 and root2.
Imagine that when you put one of them to cover the other, some nodes of the two trees are overlapped while the others are not. You need to merge the two trees into a new binary tree. The merge rule is that if two nodes overlap, then sum node values up as the new value of the merged node. Otherwise, the NOT null node will be used as the node of the new tree.
Return the merged tree.
Note: The merging process must start from the root nodes of both trees.

Input: root1 = [1,3,2,5], root2 = [2,1,3,null,4,null,7]
Output: [3,4,5,5,4,null,7]

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
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {TreeNode}
def merge_trees(root1, root2)
  if root1.nil? || root2.nil?
    return root1.nil? ? root2 : root1
  end

  root1.val += root2.val
  root1.left = merge_trees(root1.left, root2.left)
  root1.right = merge_trees(root1.right, root2.right)

  root1
end

# We return the opposite tree if one is null (nothing to merge).
# We add the values in each node position of the tree in place, taking the value from one tree if it is null in the other
# We return the merged tree.
