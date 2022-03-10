# Source : https://leetcode.com/problems/set-matrix-zeroes/
# Author : Quilleran Cronwall
# Date   : 2022-03-10
# ******************************************************************

# INSTRUCTIONS:
# Given an m x n integer matrix matrix, if an element is 0, set its entire row and column to 0's.
# You must do it in place.
#
# Example 1:
#
# Input: matrix = [[1,1,1],[1,0,1],[1,1,1]]
# Output: [[1,0,1],[0,0,0],[1,0,1]]
#

# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def set_zeroes(matrix)
  positions = []
  (0...matrix.length).each do |i| # "This is our Column"
    (0...matrix[i].length).each do |j| # "This is our Row"
      positions.push([i, j]) if matrix[i][j] == 0 # "Collect the positions of where zero is located"
    end
  end

  positions.each do |ele| # 'For each position we update the column and row'
    (0...matrix.length).each do |i|
      (0...matrix[i].length).each do |j|
        c = ele.first # "Set the column....typically in programming it's the first loop"
        r = ele.last # "Set the row...which typically is the second loop"
        matrix[i][j] = 0 if c == i # "If column equals the first loop set it to zero"
        matrix[i][j] = 0 if r == j # "If row equals the second loop set it to zero"
      end
    end
  end
  matrix      # "Return matrix since changes were done in place"
end
