# Source : https://leetcode.com/problems/rotate-image/
# Author : Quilleran Cronwall
# Date   : 2022-03-15
# ******************************************************************

# INSTRUCTIONS:
# You are given an n x n 2D matrix representing an image, rotate the image by 90 degrees (clockwise).
# You have to rotate the image in-place, which means you have to modify the input 2D matrix directly. DO NOT allocate another 2D matrix and do the rotation.
#
# Example 1:
#
# Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
# Output: [[7,4,1],[8,5,2],[9,6,3]]
#

# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def rotate(matrix)
  n = matrix.length
  matrix = transpose(matrix, n)
  reverse_columns(matrix, n)
end

def transpose(matrix, n)
  (0...n).each do |i|
    (i...n).each do |j|
      matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
    end
  end
  matrix
end

def reverse_columns(matrix, n)
  (0...n).each do |i|
    (0...n / 2).each do |j|
      matrix[i][j], matrix[i][n - j - 1] = matrix[i][n - j - 1], matrix[i][j]
    end
  end
  matrix
end
