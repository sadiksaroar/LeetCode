/* 
Code
Testcase
1480. Running Sum of 1d Array
*/

class Solution {
  List<int> runningSum(List<int> nums) {
    int i;
    for (i = 1; i < nums.length; i++) {
      nums[i] = nums[i] + nums[i - 1];
    }
    return nums;
  }
}

void main() {
  Solution solution = Solution();

  List<int> nums = [1, 2, 3, 4];
  print(solution.runningSum(nums));
}
