class Solution {
  int reverse(int x) {
    int sign = x < 0 ? -1 : 1;
    int number = x.abs();
    int result = 0;

    while (number != 0) {
      int digit = number % 10;
      number ~/= 10;

      if (result > 214748364 ||
          (result == 214748364 && digit > 7)) {
        return 0;
      }

      result = result * 10 + digit;
    }

    result *= sign;

    if (result < -2147483648 || result > 2147483647) {
      return 0;
    }

    return result;
  }
}