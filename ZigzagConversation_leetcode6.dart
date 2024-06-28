/*
The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)

P   A   H   N
A P L S I I G
Y   I   R
And then read line by line: "PAHNAPLSIIGYIR"

Write the code that will take a string and make this conversion given a number of rows:

string convert(string s, int numRows);
 

Example 1:

Input: s = "PAYPALISHIRING", numRows = 3
Output: "PAHNAPLSIIGYIR"
Example 2:

Input: s = "PAYPALISHIRING", numRows = 4
Output: "PINALSIGYAHRPI"
Explanation:
P     I    N
A   L S  I G
Y A   H R
P     I
Example 3:

Input: s = "A", numRows = 1
Output: "A"
 

Constraints:

1 <= s.length <= 1000
s consists of English letters (lower-case and upper-case), ',' and '.'.
1 <= numRows <= 1000
*/

String convert(String s, int numRows) {
  if (numRows == 1 || s.length <= numRows) {
    return s;
  }

  List<StringBuffer> rows = List.generate(numRows, (_) => StringBuffer());

  int currentRow = 0;
  bool goingDown = false;

  for (int i = 0; i < s.length; i++) {
    rows[currentRow].write(s[i]);

    if (currentRow == 0 || currentRow == numRows - 1) {
      goingDown = !goingDown;
    }

    currentRow += goingDown ? 1 : -1;
  }

  StringBuffer result = StringBuffer();
  for (StringBuffer row in rows) {
    result.write(row.toString());
  }

  return result.toString();
}

void main() {
  print(convert("PAYPALISHIRING", 3)); // Output: "PAHNAPLSIIGYIR"
  print(convert("PAYPALISHIRING", 4)); // Output: "PINALSIGYAHRPI"
  print(convert("A", 1));              // Output: "A"
}
