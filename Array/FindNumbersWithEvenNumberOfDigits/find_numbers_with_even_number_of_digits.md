# Finding Digit Count Using a Math Formula

The formula to find the number of digits in a number `num`:

```
digitCount = floor(log10(num)) + 1
```

**Why it works:**

- `log10(num)` tells you which power of 10 the number is close to
- For example, all numbers from 100 to 999 have a `log10` value between 2.x (since `10^2 = 100` and `10^3 = 1000`)
- Taking the `floor()` removes the decimal part, but since log10(100) = 2 for a 3-digit number, you need to add `+1` at the end

## Dart Code (Using the Math Formula)

```dart
import 'dart:math';

class Solution {
  int findNumbers(List<int> nums) {
    int count = 0;

    for (int num in nums) {
      int digits = (log(num) / log(10)).floor() + 1;
      if (digits % 2 == 0) {
        count++;
      }
    }

    return count;
  }
}
```

### Important Notes

- Dart's `dart:math` library doesn't have a direct `log10()` function, so you need to use `log(num) / log(10)` (change of base formula)
- This can be an issue when `num = 0` (log(0) is undefined), but since this problem's constraint guarantees `nums[i] >= 1`, you don't need to worry about it here
- There's a risk of floating-point precision errors (e.g., log10(1000) might come out as 2.9999999999 instead of exactly 3.0), which makes this method less reliable than the string length approach — in production code, the string approach is safer

## Comparison

| Method              | Time Complexity | Reliability                     |
| ------------------- | --------------- | ------------------------------- |
| `toString().length` | O(d) per number | ✅ Always accurate              |
| `log10` formula     | O(1) per number | ⚠️ Risk of floating-point error |

Your original string-based solution is actually safer and more readable — this math approach is shown just so you know it exists.
