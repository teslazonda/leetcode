# Source : https://leetcode.com/problems/word-search/
# Author : Quilleran Cronwall
# Date   : 2022-05-11
# ******************************************************************

# INSTRUCTIONS:
# Given an m x n grid of characters board and a string word, return true if word exists in the grid.
#
# The word can be constructed from letters of sequentially adjacent cells, where adjacent cells are horizontally or vertically neighboring. The same letter cell may not be used more than once.
#
# Example 1:
#
# Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCCED"
# Output: true
#
# Example 2:
#
# Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "SEE"
# Output: true
#
# Example 3:
#
# Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCB"
# Output: false

def exist(board, word)
  return false if board.empty? || word.empty?

  m = board.length
  n = board[0].length
  @board = board
  @word = word
  (0...m).each do |i|
    (0...n).each do |j|
      return true if word_exists?(i, j, 0)
    end
  end
  p board
  false
end

def word_exists?(i, j, wi)
  return false if !within_bounds?(i, j) || @board[i][j] != @word[wi]
  return true if wi == @word.length - 1

  @board[i][j] = '*'
  result = word_exists?(i + 1, j, wi + 1) ||
           word_exists?(i, j + 1, wi + 1) ||
           word_exists?(i - 1, j, wi + 1) ||
           word_exists?(i, j - 1, wi + 1)

  @board[i][j] = @word[wi]
  result
end

def within_bounds?(i, j)
  i >= 0 && j >= 0 && i < @board.length && j < @board[0].length
end
