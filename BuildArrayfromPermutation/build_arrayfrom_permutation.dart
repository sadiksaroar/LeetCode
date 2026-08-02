/*void main() {
  List<int> nums = [0, 2, 1, 5, 3, 4];
  print((nums));
}
*/

class Solution {
  List<int> buildArray(List<int> nums) {
    List<int> ans = List.filled(nums.length, 0);

    for (int i = 0; i < nums.length; i++) {
      ans[i] = nums[nums[i]];
    }

    return ans;
  }
}

void main() {
  List<int> nums = [5, 0, 1, 2, 3, 4];

  Solution solution = Solution();
  print(solution.buildArray(nums));
}
