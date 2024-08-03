void main() {
  const list = [1, 2, 3, 4];
  const searchedNumber = 5;
  print(firstWhere<int>(list, (e) => e == searchedNumber,
      orElse: () => -1));
}

T firstWhere<T>(List<T> values, bool Function(T) search,
    {required T Function() orElse}) {
  for (var value in values) {
    if (search(value)) {
      return value;
    }
  }
  return orElse();
}
