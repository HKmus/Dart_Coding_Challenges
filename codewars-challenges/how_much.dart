import 'dart:math';

List<List<String>> howmuch(int m, int n) {
  int limit = max(m, n);
  List<List<String>> possiblities = [];
  for (int i = 0; i < limit / 7; i++) {
    if ((7 * i + 1) % 9 == 0 && (2 + 7 * i) >= min(m, n)) {
      possiblities.add(
          ['M: ${2 + 7 * i}', 'B: ${i}', 'C: ${((7 * i + 1) / 9).round()}']);
    }
  }
  return possiblities;
}
