void main() {
  const list = [1, 2, 3, 4];
  final evenNumbers = where<int>(list, (e) => e % 2 == 0);
  print(evenNumbers);
}

List<T> where<T>(List<T> values, bool Function(T) filter) {
  var filterdList = <T>[];
  for (var value in values) {
    if (filter(value)) {
      filterdList.add(value);
    }
  }
  return filterdList;
}
