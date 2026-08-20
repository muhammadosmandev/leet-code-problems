class Solution {
  List<String> generateParenthesis(int n) {
    List<String> result = [];

    void backtrack(String current, int open, int close) {
      // Complete valid combination
      if (current.length == 2 * n) {
        result.add(current);
        return;
      }

      // Add opening bracket
      if (open < n) {
        backtrack(
          current + '(',
          open + 1,
          close,
        );
      }

      // Add closing bracket only if it is valid
      if (close < open) {
        backtrack(
          current + ')',
          open,
          close + 1,
        );
      }
    }

    backtrack('', 0, 0);

    return result;
  }
}