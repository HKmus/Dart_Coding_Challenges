import 'dart:math';

class Solution {
  static int maxProfit(List<int> prices) {
    int mim = prices.first;
    int profit = 0;

    for (var i = 1; i < prices.length; i++) {
      mim = min(mim, prices[i]);
      profit = max(profit, prices[i] - mim);
    }
    return profit;
  }
}

void main() {
  print(Solution.maxProfit([7, 6, 4, 3, 1, 8]));
}
