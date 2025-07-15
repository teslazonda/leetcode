# Source : https://leetcode.com/problems/length-of-last-word/description/
# Author : Quilleran Cronwall
# Date   : 2025-07-15
# ******************************************************************

# INSTRUCTIONS:
#Given a string s consisting of words and spaces, return the length of the last word in the string.
#A word is a maximal substring consisting of non-space characters only.
#
# Example 1:
#
#Input: s = "Hello World"
#Output: 5
#Explanation: The last word is "World" with length 5.

# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    arr = s.strip.split 
    arr[-1].length
end

