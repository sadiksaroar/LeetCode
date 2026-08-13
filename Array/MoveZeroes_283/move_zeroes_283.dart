class Solution {
  void moveZeroes(List<int> nums) {
    int j = 0;

    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != 0) {
        nums[j] = nums[i];
        j++;
      }
    }
    while (j < nums.length) {
      nums[j] = 0;
      j++;
    }
  }
}

void main() {
  List<int> nums = [0, 1, 0, 3, 12];

  Solution solution = Solution();
  solution.moveZeroes(nums);
  print(nums);
}
