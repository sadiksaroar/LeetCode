class Solution {
  int maxProfit(List<int> prices) {
    int minPrice = prices[0];
    int maxProfit = 0;

    for (int i = 1; i < prices.length; i++) {
      int profit = prices[i] - minPrice;

      if (profit > maxProfit) {
        maxProfit = profit;
      }

      if (prices[i] < minPrice) {
        minPrice = prices[i];
      }
    }

    return maxProfit;
  }
}

void main() {
  Solution solution = Solution();

  List<int> prices = [7, 1, 5, 3, 6, 4];

  int result = solution.maxProfit(prices);

  print("Maximum Profit: $result");
}
