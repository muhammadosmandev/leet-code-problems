class Solution {
  int lengthOfLongestSubstring(String s) {
    Map<String, int> map = {};

    int left = 0;
    int maxLength = 0;

    for (int right = 0; right < s.length; right++) {
      String ch = s[right];

      if (map.containsKey(ch) && map[ch]! >= left) {
        left = map[ch]! + 1;
      }

      map[ch] = right;

      int currentLength = right - left + 1;

      if (currentLength > maxLength) {
        maxLength = currentLength;
      }
    }

    return maxLength;
  }
}