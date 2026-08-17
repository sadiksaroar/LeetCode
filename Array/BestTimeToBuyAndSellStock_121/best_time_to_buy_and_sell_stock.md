# LeetCode 121 — Best Time to Buy and Sell Stock

The most important rule here: you can only buy once and sell once, and the sell must happen on a day **after** the buy.

## 💡 Core Idea

Let's say:

```
prices = [7, 1, 5, 3, 6, 4]
```

For each day, we track:

- The lowest price seen so far → `minPrice`
- The profit if we sold today → `prices[i] - minPrice`
- The best profit found so far → `maxProfit`

Walking through it:

```
7 → minPrice = 7
1 → minPrice = 1
5 → profit = 5 - 1 = 4
3 → profit = 3 - 1 = 2
6 → profit = 6 - 1 = 5 ✅
4 → profit = 4 - 1 = 3
```

So the answer = **5**

## ✅ Dart Code

```dart
class Solution {
  int maxProfit(List<int> prices) {
    int minPrice = prices[0];
    int maxProfit = 0;
    for (int i = 1; i < prices.length; i++) {
      // Profit if we sell at today's price
      int profit = prices[i] - minPrice;
      // Update maximum profit
      if (profit > maxProfit) {
        maxProfit = profit;
      }
      // Update the lowest buy price seen so far
      if (prices[i] < minPrice) {
        minPrice = prices[i];
      }
    }
    return maxProfit;
  }
}
```

## 🔍 Dry Run

```
prices = [7, 1, 5, 3, 6, 4]
```

| Day | Price | minPrice | Profit     | maxProfit |
| --- | ----- | -------- | ---------- | --------- |
| 0   | 7     | 7        | -          | 0         |
| 1   | 1     | 1        | 1 - 7 = -6 | 0         |
| 2   | 5     | 1        | 5 - 1 = 4  | 4         |
| 3   | 3     | 1        | 3 - 1 = 2  | 4         |
| 4   | 6     | 1        | 6 - 1 = 5  | 5         |
| 5   | 4     | 1        | 4 - 1 = 3  | 5         |

**Final answer: 5**

That means: buy at $1 → sell at $6 → profit = 5

## 🧠 Which Algorithm Is Used Here?

This problem uses a **Greedy Algorithm**.

### 1. Greedy Algorithm

At every step, we make a locally optimal decision:

> "Keep track of the lowest price seen so far."

Then we check what the maximum profit would be if we sold at the current price.

```dart
int profit = prices[i] - minPrice;
```

### 2. One Pass / Single Traversal

We traverse the array only once.

```dart
for (int i = 1; i < prices.length; i++)
```

So:

**Time Complexity: O(n)**

### 3. Constant Space

We only use two main variables:

- `minPrice`
- `maxProfit`

No extra array is created.

So:

**Space Complexity: O(1)**

## ❌ What Would Brute Force Look Like?

We could compare every buy day with every later sell day:

```dart
for (int i = 0; i < prices.length; i++) {
  for (int j = i + 1; j < prices.length; j++) {
    int profit = prices[j] - prices[i];
  }
}
```

This has two nested loops.

**Time Complexity: O(n²)**

But our Greedy + One Pass solution runs in **O(n)** — much more efficient.

## 🎯 One-Line Interview Answer

> "I use a greedy approach. I keep track of the minimum price seen so far and calculate the maximum profit by selling at the current price. This gives O(n) time and O(1) space complexity."

The key pattern to remember from this problem:

> **Minimum so far + Current value → Maximum answer**

This pattern is useful in many array/stock-related problems.
