# Source : https://leetcode.com/problems/remove-duplicates-from-sorted-list/
# Author : Quilleran Cronwall
# Date   : 2022-02-08
#******************************************************************

=begin
INSTRUCTIONS:
Given the head of a sorted linked list, delete all duplicates such that each element appears only once. Return the linked list sorted as well.
Example 1:

Input: head = [1,1,2]
Output: [1,2]

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
def delete_duplicates(head)
  cur = head
  while cur
    while cur.next && cur.next.val == cur.val
      cur.next = cur.next.next
    end
    cur = cur.next
  end
  head
end

# We skip over an element if it is the same as the next element, eliminating duplicates.
