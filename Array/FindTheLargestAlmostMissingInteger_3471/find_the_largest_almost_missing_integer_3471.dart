/*  Find the Largest Almost Missing Integer */
class Solution {
  int largestInteger(List<int> nums, int k) {
    int n = nums.length;

    for (int x = 50; x >= 0; x--) {
      int count = 0;

      for (int i = 0; i <= n - k; i++) {
        bool found = false;

        for (int j = i; j < i + k; j++) {
          if (nums[j] == x) {
            found = true;
            break;
          }
        }

        if (found) {
          count++;
        }
      }

      if (count == 1) {
        return x;
      }
    }

    return -1;
  }
}
