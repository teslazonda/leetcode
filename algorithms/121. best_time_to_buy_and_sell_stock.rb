# Source : https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
# Author : Quilleran Cronwall
# Date   : 2022-02-04
#******************************************************************

=begin
INSTRUCTIONS:
You are given an array prices where prices[i] is the price of a given stock on the ith day.
You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.
Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.

Example 1:

Input: prices = [7,1,5,3,6,4]
Output: 5
Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.

=end

# The algorithm acheives O(n) time complexity
# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  l = 0 #buy
  r = 1 #sell
  max_profit = 0
  while r < prices.length do
    if prices[l] < prices [r]
      profit = prices[r] - prices[l]
      max_profit = [profit,max_profit].max
    else
      l = r
    end
    r += 1
  end
  max_profit
end

# Using two pointers, we update the left pointer whenever a higher price is found.
