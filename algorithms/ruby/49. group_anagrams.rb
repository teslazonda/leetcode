# Source : https://leetcode.com/problems/group-anagrams/
# Author : Quilleran Cronwall
# Date   : 2023-02-01
# ******************************************************************

# INSTRUCTIONS:

#Given an array of strings strs, group the anagrams together. 
#You can return the answer in any order.

#An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, 
#typically using all the original letters exactly once.

# The algorithm acheives O(m * n) where m is the number of strings, and n is the average length of each string.

# @param {String[]} strs
# @return {String[][]}
class Solution
   def group_anagrams(strs)
        hash = Hash.new { |hash, key| hash[key] = [] } # mapping char_count to list of anagrams
        strs.each do |string| 
            count = Array.new(26,0)

            string.split('').each do |char|
                count[char.ord - "a".ord] += 1
            end
            
            hash[count].append(string)
        
        end
        hash.values
end

# In this question only characters a-z are used.
# So we can count the number of characters in each string, and compare them to other strings.
# We solve this with a Hash

