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

# @param {Character[][]} board
# @param {String} word
# @return {Boolean}
def exist(board, word)
  return false if board.flatten.uniq.length < word.chars.uniq.length

  row_length = board.length
  col_length = board[0].length

  row_length.times do |row|
    col_length.times do |col|
      return true if word_exists(board, row, col, word, 0)
    end
  end

  false
end

private def word_exists(board, row, col, word, idx)
  return true if word.length == idx
  return false if row < 0 || row >= board.length || col < 0 || col >= board[0].length # out of bound
  return false if board[row][col] != word[idx] # stop searching if the current character doesn't match

  board[row][col] = '*'

  right = word_exists(board, row, col + 1, word, idx + 1)
  down = word_exists(board, row + 1, col, word, idx + 1)
  left = word_exists(board, row, col - 1, word, idx + 1)
  up = word_exists(board, row - 1, col, word, idx + 1)

  board[row][col] = word[idx]

  right || down || left || up
end
