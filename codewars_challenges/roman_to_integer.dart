class Solution {
  int romanToInt(String s) {
    int number = 0;
    Map<String, int> RomanNumerals = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };
    if (s.length == 0) return 0;
    number += RomanNumerals[s[0]]!;
    for (int i = 1; i < s.length; i++) {
      if (RomanNumerals[s[i]]! > RomanNumerals[s[i - 1]]!) {
        number -= RomanNumerals[s[i - 1]]!;
        number += RomanNumerals[s[i]]! - RomanNumerals[s[i - 1]]!;
      } else {
        number += RomanNumerals[s[i]]!;
      }
    }
    return number;
  }
}
