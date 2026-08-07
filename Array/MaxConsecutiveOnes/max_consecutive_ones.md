# 485. Max Consecutive Ones

## Dart Solution

```dart
/*  485. Max Consecutive Ones  */

class Solution {
  int findMaxConsecutiveOnes(List<int> nums) {
    int count = 0;
    int maxCount = 0;

    for (int num in nums) {
      if (num == 1) {
        count++;
        if (count > maxCount) {
          maxCount = count;
        }
      } else {
        count = 0;
      }
    }

    return maxCount;
  }
}

void main() {
  Solution solution = Solution();
  List<int> nums = [1, 1, 0, 1, 1, 1];
  print("Sadik Saroar");
  print(solution.findMaxConsecutiveOnes(nums));
}
```

## Pseudocode

```
count = 0
maxCount = 0
for each num in nums:
    if num == 1:
        count++
        maxCount = max(maxCount, count)
    else:
        count = 0
return maxCount
```

## Core Theory (English Explanation)

The core theory behind "Max Consecutive Ones" is very simple.

Suppose we have a binary array:

```
[1, 1, 0, 1, 1, 1]
```

What is the maximum number of consecutive 1s here?

**Answer: 3.**

### Main Idea (Theory)

- Keep a counter.
- If you encounter a 1 → `count++`
- If you encounter a 0 → `count = 0` (because the consecutive streak is broken)
- Every time, update `maxCount = max(maxCount, count)`.

### Dry Run

| Element | count | maxCount |
|---------|-------|----------|
| 1       | 1     | 1        |
| 1       | 2     | 2        |
| 0       | 0     | 2        |
| 1       | 1     | 2        |
| 1       | 2     | 2        |
| 1       | 3     | 3        |

Final **Answer = 3**