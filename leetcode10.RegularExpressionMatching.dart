/*
Given an input string s and a pattern p, implement regular expression matching with support for '.' and '*' where:

'.' Matches any single character.​​​​
'*' Matches zero or more of the preceding element.
The matching should cover the entire input string (not partial).

 

Example 1:

Input: s = "aa", p = "a"
Output: false
Explanation: "a" does not match the entire string "aa".
Example 2:

Input: s = "aa", p = "a*"
Output: true
Explanation: '*' means zero or more of the preceding element, 'a'. Therefore, by repeating 'a' once, it becomes "aa".
Example 3:

Input: s = "ab", p = ".*"
Output: true
Explanation: ".*" means "zero or more (*) of any character (.)".
 

Constraints:

1 <= s.length <= 20
1 <= p.length <= 20
s contains only lowercase English letters.
p contains only lowercase English letters, '.', and '*'.
It is guaranteed for each appearance of the character '*', there will be a previous valid character to match.
*/


class Solution {
  bool isMatch(String s, String p) {
    
    int sLen = s.length;
  int pLen = p.length;
  
  // dp[i][j] will be true if the first i characters in s can match the first j characters in p
  List<List<bool>> dp = List.generate(sLen + 1, (_) => List.filled(pLen + 1, false));
  
  // An empty string matches an empty pattern
  dp[0][0] = true;
  
  // Handle patterns like a*, a*b*, a*b*c* etc.
  for (int j = 1; j <= pLen; j++) {
    if (p[j - 1] == '*') {
      dp[0][j] = dp[0][j - 2];
    }
  }
  
  for (int i = 1; i <= sLen; i++) {
    for (int j = 1; j <= pLen; j++) {
      if (p[j - 1] == s[i - 1] || p[j - 1] == '.') {
        dp[i][j] = dp[i - 1][j - 1];
      } else if (p[j - 1] == '*') {
        dp[i][j] = dp[i][j - 2];
        if (p[j - 2] == s[i - 1] || p[j - 2] == '.') {
          dp[i][j] = dp[i][j] || dp[i - 1][j];
        }
      }
    }
  }
  
  return dp[sLen][pLen];
  }
}
