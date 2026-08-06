class Solution {
  List<int> getConcatenation(List<int> nums) {
    int n = nums.length;

    List<int> ans = List.filled(2 * n, 0);

    for (int i = 0; i < n; i++) {
      ans[i] = nums[i];
      ans[i + n] = nums[i];
    }

    return ans;
  }
}

void main() {
  Solution solution = Solution();

  List<int> nums = [1, 2, 1];
  print(solution.getConcatenation(nums));
}
