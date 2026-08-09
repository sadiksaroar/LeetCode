# Richest Customer Wealth

**LeetCode 1672 — Richest Customer Wealth**

## Problem

`accounts[i][j]` is the amount of money customer `i` has in the `j`-th bank. The **wealth** of a customer is the sum of money in all their accounts. Find the maximum wealth among all customers.

## Code

```dart
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
```

## Explanation

1. `maxWealth` is initialized to `0` — it tracks the highest wealth found so far.
2. Outer loop: iterate over each `customer` (a list of ints) in `accounts`.
3. For each customer, start `wealth` at `0` and, in the inner loop, sum up the money in all their accounts.
4. Once the total is calculated, if it's greater than the current `maxWealth`, update `maxWealth`.
5. After checking all customers, return `maxWealth` — this is the richest customer's wealth.

## Complexity

- **Time:** O(n × m) — n = number of customers, m = number of accounts per customer
- **Space:** O(1) — no extra space needed

## Example

```
Input:  accounts = [[1,2,3],[3,2,1]]
Output: 6
```

Both customers have wealth = 1+2+3 = 6 and 3+2+1 = 6, so the maximum is **6**.
