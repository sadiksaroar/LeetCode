class Solution {
  List<int> plusOne(List<int> digits) {
    for (int i = digits.length - 1; i >= 0; i--) {
      if (digits[i] < 9) {
        digits[i]++;
        return digits;
      }
    }
    // If all digits are 9, we need to add a new digit at the beginning
    digits.insert(0, 1);
    return digits;
  }
}

void main() {
  List<int> digits = [9, 9, 9];

  Solution solution = Solution();
  List<int> result = solution.plusOne(digits);
  print(result);
}
