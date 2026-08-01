class Solution {
  String convert(String s, int numRows) {
    if (numRows == 1 || numRows >= s.length) {
      return s;
    }

    List<StringBuffer> rows = List.generate(
      numRows,
      (_) => StringBuffer(),
    );

    int currentRow = 0;
    bool goingDown = true;

    for (int i = 0; i < s.length; i++) {
      rows[currentRow].write(s[i]);

      if (currentRow == 0) {
        goingDown = true;
      } else if (currentRow == numRows - 1) {
        goingDown = false;
      }

      if (goingDown) {
        currentRow++;
      } else {
        currentRow--;
      }
    }

    StringBuffer result = StringBuffer();

    for (StringBuffer row in rows) {
      result.write(row.toString());
    }

    return result.toString();
  }
}