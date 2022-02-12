# Source : https://leetcode.com/problems/merge-two-sorted-lists/
# Author : Quilleran Cronwall
# Date   : 2022-02-12
#******************************************************************

=begin
INSTRUCTIONS:
You are given the heads of two sorted linked lists list1 and list2.
Merge the two lists in a one sorted list. The list should be made by splicing together the nodes of the first two lists.
Return the head of the merged linked list.

Example 1:

Input: list1 = [1,2,4], list2 = [1,3,4]
Output: [1,1,2,3,4,4]

=end

# The algorithm acheives O(n) time complexity
# # Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
    dummy = ListNode.new(nil,nil)
    tail = dummy
    while list1 && list2
        if list1.val < list2.val
            tail.next = list1
            list1 = list1.next
        else
            tail.next = list2
            list2 = list2.next
        end
        tail = tail.next

    end
    if list1
        tail.next = list1
    elsif list2
        tail.next = list2
    end
    return dummy.next
end

# Returning dummy.next because dummy starts with nil values that terminate the linked list.
