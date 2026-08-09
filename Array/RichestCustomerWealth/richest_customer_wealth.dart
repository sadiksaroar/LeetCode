/* 1672. Richest Customer Wealth */
class Solution {
  int maximumWealth(List<List<int>> accounts) {
    int maxWealth = 0;

    for (var customer in accounts) {
      int wealth = 0;

      for (var money in customer) {
        wealth += money;
      }

      if (wealth > maxWealth) {
        maxWealth = wealth;
      }
    }

    return maxWealth;
  }
}

void main() {
  Solution solution = Solution();

  List<List<int>> accounts = [
    [1, 2, 3],
    [3, 2, 1],
  ];

  print(solution.maximumWealth(accounts));
}
