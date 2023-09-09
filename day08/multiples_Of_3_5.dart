int solution(int n) {
  Set<int> numbers = {};
  for (int i = 0; i < n; i++) {
    if (i % 5 == 0 || i % 3 == 0) {
      numbers.add(i);
    }
  }
  return numbers.isEmpty ? 0 : numbers.reduce((a, b) => a + b);
}
