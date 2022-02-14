# Source : https://leetcode.com/problems/peak-index-in-a-mountain-array/
# Author : Quilleran Cronwall
# Date   : 2022-02-14
#******************************************************************

=begin
INSTRUCTIONS:
Let's call an array arr a mountain if the following properties hold:

    arr.length >= 3
    There exists some i with 0 < i < arr.length - 1 such that:
        arr[0] < arr[1] < ... arr[i-1] < arr[i]
        arr[i] > arr[i+1] > ... > arr[arr.length - 1]

Given an integer array arr that is guaranteed to be a mountain, return any i such that arr[0] < arr[1] < ... arr[i - 1] < arr[i] > arr[i + 1] > ... > arr[arr.length - 1].

Example 1:

Input: arr = [0,1,0]
Output: 1

=end

# The algorithm acheives O(n) time complexity
# @param {Integer[]} arr
# @return {Integer}
def peak_index_in_mountain_array(arr)
  lo = 0
  hi = arr.length - 1
  while lo < hi do
    mid = (lo + hi)/2
    if arr[mid] < arr[mid + 1]
      lo = mid + 1
    else
      hi = mid
    end
  end
  lo
end

