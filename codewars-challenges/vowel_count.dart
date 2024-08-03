import "dart:core";

int getCount(String inputStr) {
  String vowels = 'aeiou';
  int numberOfVowels = 0;
  for (int i = 0; i < inputStr.length; i++) {
    if (vowels.contains(inputStr[i])) {
      numberOfVowels++;
    }
  }
  return numberOfVowels;
}
