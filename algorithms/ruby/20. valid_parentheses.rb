# Source : https://leetcode.com/problems/valid-parentheses/description
# Author : Quilleran Cronwall
# Date   : 2025-07-17
# ******************************************************************

# INSTRUCTIONS:
# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
#
# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Every close bracket has a corresponding open bracket of the same type.
#
# Example 1:
# Input: s = "()"
# Output: true
#
# Example 2:
# Input: s = "()[]{}"
# Output: true
#
# @param {String} s
# @return {Boolean}
def is_valid(s)
  return true if s.size == 0
  stack = []
  s.each_char do |c|
      case c
      when '(', '{', '['
          stack.push(c)
      when ')'
          return false if stack.pop() != '('
      when '}'
          return false if stack.pop() != '{'
      when ']'
          return false if stack.pop() != '['
      end
  end
  return stack.empty?
end
# Using a stack, we track if the corresponding closing parentheses when popped from the stack is the correct closing parentheses.
