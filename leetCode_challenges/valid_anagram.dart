class Solution {
  static bool isAnagram(String s, String t) {
    final sortedS = (s.split('')..sort()).join();
    final sortedT = (t.split('')..sort()).join();
    return sortedS == sortedT;
  }
}

void main() {
  print(Solution.isAnagram('anagram', 'nagaram'));
}
