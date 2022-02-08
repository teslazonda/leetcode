# Source : https://leetcode.com/problems/middle-of-the-linked-list/
# Author : Quilleran Cronwall
# Date   : 2022-02-08
#******************************************************************

=begin
INSTRUCTIONS:
Given the head of a singly linked list, return the middle node of the linked list.
If there are two middle nodes, return the second middle node.

Example 1:

Input: head = [1,2,3,4,5]
Output: [3,4,5]
Explanation: The middle node of the list is node 3.

=end

# The algorithm acheives O(n) time complexity
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def middle_node(head)
  slow = fast = head
  while(fast != nil && fast.next != nil)
    slow = slow.next
    fast = fast.next.next
  end
  slow
end

# Using two pointers, when the fast pointer reaches the end of the linked list,
# we return the slow pointer because it has moved half the distance (to the middle of the linked lsit).
