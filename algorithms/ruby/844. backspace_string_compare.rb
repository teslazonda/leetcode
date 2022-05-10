# Source : # Source : https://leetcode.com/problems/backspace-string-compare/
# Author : Quilleran Cronwall
# Date   : 2022-02-26
#******************************************************************

=begin
INSTRUCTIONS:
Given two strings s and t, return true if they are equal when both are typed into empty text editors. '#' means a backspace character.
Note that after backspacing an empty text, the text will continue empty.

Example 1:

Input: s = "ab#c", t = "ad#c"
Output: true
Explanation: Both s and t become "ac".

=end

# The algorithm acheives O(n) time complexity
# @param {String} s
# @param {String} t
# @return {Boolean}
def string_creator(s)
  s.chars.each_with_object([]) do |char,array|
    if '#' == char
      array.pop
    else
      array.push(char)
    end
  end.join
end

def backspace_compare(s, t)
  string_creator(s) == string_creator(t)
end

# Implement solution with an array.
