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
