/*27. Remove Element*/

class Solution {
  int removeElement(List<int> nums, int val) {
    int k = 0;

    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != val) {
        nums[k] = nums[i];
        k++;
      }
    }

    return k;
  }
}

void main() {
  Solution solution = Solution();

  List<int> nums = [0, 1, 2, 2, 3, 0, 4, 2];
  int val = 3;

  int result = solution.removeElement(nums, val);

  print(result);
  print(nums);
}
