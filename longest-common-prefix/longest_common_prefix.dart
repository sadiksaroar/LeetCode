class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) return "";

    String prefix = strs[0];

    for (int i = 1; i < strs.length; i++) {
      while (!strs[i].startsWith(prefix)) {
        prefix = prefix.substring(0, prefix.length - 1);

        if (prefix.isEmpty) return "";
      }
    }

    return prefix;
  }
}

void main() {
  Solution solution = Solution();

  List<String> strs1 = ["flower", "flow", "flight"];
  print(solution.longestCommonPrefix(strs1)); // Output: "fl"

  List<String> strs2 = ["dog", "racecar", "car"];
  print(solution.longestCommonPrefix(strs2)); // Output: ""

  List<String> strs3 = ["interview", "intermediate", "internal"];
  print(solution.longestCommonPrefix(strs3)); // Output: "inter"
}
