class Solution {
  String longestPalindrome(String s) {
    if (s.length < 2) {
      return s;
    }

    int start = 0;
    int maxLength = 1;

    for (int i = 0; i < s.length; i++) {
      int oddLength = expandFromCenter(s, i, i);
      int evenLength = expandFromCenter(s, i, i + 1);

      int currentLength =
          oddLength > evenLength ? oddLength : evenLength;

      if (currentLength > maxLength) {
        maxLength = currentLength;

        start = i - (maxLength - 1) ~/ 2;
      }
    }

    return s.substring(start, start + maxLength);
  }

  int expandFromCenter(String s, int left, int right) {
    while (left >= 0 &&
        right < s.length &&
        s[left] == s[right]) {
      left--;
      right++;
    }

    return right - left - 1;
  }
}