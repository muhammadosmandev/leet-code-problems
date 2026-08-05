class Solution {
  int myAtoi(String s) {
    int i = 0;
    int sign = 1;
    int result = 0;

    const int minInt = -2147483648;
    const int maxInt = 2147483647;

    // 1. Skip leading spaces
    while (i < s.length && s[i] == ' ') {
      i++;
    }

    // 2. Check sign
    if (i < s.length && s[i] == '-') {
      sign = -1;
      i++;
    } else if (i < s.length && s[i] == '+') {
      i++;
    }

    // 3. Read digits
    while (i < s.length) {
      int code = s.codeUnitAt(i);

      if (code < 48 || code > 57) {
        break;
      }

      int digit = code - 48;

      // 4. Check overflow before adding digit
      if (result > (maxInt - digit) ~/ 10) {
        return sign == 1 ? maxInt : minInt;
      }

      result = result * 10 + digit;
      i++;
    }

    return result * sign;
  }
}