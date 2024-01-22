class Solution {
  void reverseString(List<String> s) {
    int left = 0, right = s.length - 1;
    while(left<(s.length~/2)){
      String temp = s[left];
      s[left] = s[right];
      s[right] = temp;
      left++;
      right--;
    }
  }
}
