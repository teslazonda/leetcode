# Source : https://leetcode.com/problems/linked-list-cycle/
# Author : Quilleran Cronwall
# Date   : 2022-02-07
#******************************************************************

=begin
INSTRUCTIONS:
Given head, the head of a linked list, determine if the linked list has a cycle in it.
There is a cycle in a linked list if there is some node in the list that can be reached again by continuously following the next pointer. Internally, pos is used to denote the index of the node that tail's next pointer is connected to. Note that pos is not passed as a parameter.
Return true if there is a cycle in the linked list. Otherwise, return false.

Example 1:

Input: head = [3,2,0,-4], pos = 1
Output: true
Explanation: There is a cycle in the linked list, where the tail connects to the 1st node (0-indexed).


=end

# The algorithm acheives O(n) time complexity
# Definition for singly-linked list.
# class listnode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {listnode} head
# @return {boolean}
def hascycle(head)
  slow = fast = head
  while fast && fast.next do
    slow = slow.next
    fast = fast.next.next
    if slow == fast
      return true
    end

  end
  false
end

# We know that with two pointers, one traveling at twice the speed of the other,
# will eventually meet if there is a cycle in the linked list.
