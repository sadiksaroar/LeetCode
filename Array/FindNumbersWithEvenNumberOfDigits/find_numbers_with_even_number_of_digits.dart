/*  1295. Find Numbers with Even Number of Digits*/

class Solution {
  int findNumbers(List<int> nums) {
    int count = 0;

    for (int num in nums) {
      if (num.toString().length % 2 == 0) {
        count++;
      }
    }

    return count;
  }
}

void main() {
  Solution solution = Solution();
  List<int> nums = [12, 345, 2, 6, 7896];
  int result = solution.findNumbers(nums);
  print(result);
}
