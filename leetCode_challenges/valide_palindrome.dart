class Solution {
   static  isPalindrome(String s) {
    final string = s.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
    return string == string.split('').reversed.join();
  }
}

void main() {
  print(Solution.isPalindrome('A man, a plan, a canal: Panama'));
}
