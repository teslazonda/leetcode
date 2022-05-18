# Source : https://leetcode.com/problems/longest-consecutive-sequence/
# Author : Quilleran Cronwall
# Date   : 2022-05-17
#******************************************************************

=begin
INSTRUCTIONS:
Given an unsorted array of integers nums, return the length of the longest consecutive elements sequence.

You must write an algorithm that runs in O(n) time.

Example 1:

Input: nums = [100,4,200,1,3,2]
Output: 4
Explanation: The longest consecutive elements sequence is [1, 2, 3, 4]. Therefore its length is 4.

Example 2:

Input: nums = [0,3,7,2,5,8,4,6,0,1]
Output: 9
=end

# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
  hash_map = Hash[nums.collect{|n| [n,n]}]
  results = []

  nums.each_with_index do |n, index|
    # if this is starting sequence
    if !hash_map[n - 1]
      seq = n
      result = 0
      # get sequence length
      while hash_map[seq]
        result += 1
        seq += 1
      end
      results << result
    end
  end
  results.max || 0
end

# We take advantage of the fast look up time of the hashmap,
# checking if an element is the start of a sequence by checking if
# there is no element to the left of it in the array.

# We return the length of greatest sequence.
