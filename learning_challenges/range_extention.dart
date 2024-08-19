extension rangeBetween on int {
  List<int> rangeTo(int range) {
    if (range < this) return [];
    final list = <int>[];
    for (var i = this; i <= range; i++) {
      list.add(i);
    }
    return list;
  }
}

void main() {
  print(1.rangeTo(1));
}
