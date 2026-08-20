class Solution {
  bool isValid(String s) {
    List<String> stack = [];

    for (int i = 0; i < s.length; i++) {
      String char = s[i];

      if (char == '(' || char == '[' || char == '{') {
        stack.add(char);
      } else {
        if (stack.isEmpty) {
          return false;
        }

        String last = stack.removeLast();

        if (char == ')' && last != '(') {
          return false;
        }

        if (char == ']' && last != '[') {
          return false;
        }

        if (char == '}' && last != '{') {
          return false;
        }
      }
    }

    return stack.isEmpty;
  }
}