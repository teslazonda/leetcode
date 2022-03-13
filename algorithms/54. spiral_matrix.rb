# Source : https://leetcode.com/problems/spiral-matrix/
# Author : Quilleran Cronwall
# Date   : 2022-03-13
# ******************************************************************

# INSTRUCTIONS:
# Given an m x n matrix, return all elements of the matrix in spiral order.
#
# Example 1:
#
# Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
# Output: [1,2,3,6,9,8,7,4,5]
#

# The algorithm acheives O(n) time complexity
# @param {Integer[][]} matrix
# @return {Integer[]}
def spiral_order(matrix)
  answer = []
  return answer if matrix.nil? || matrix.empty?

  while true
    begin
      len = matrix.length - 1
      answer += matrix.shift
      i = 0
      j = 1
      while i < len
        answer << matrix[i].pop
        i += 1
      end
      answer += matrix.pop.reverse
      while j < len
        answer << matrix[len - 1 - j].shift
        j += 1
      end
    rescue StandardError
      break
    end
  end
  answer.compact
end
