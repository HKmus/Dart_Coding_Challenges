List<int> pendulum(values) {
  List<int> pendulumList = [];
  values.sort();
  for (int i = 0; i < values.length; i++) {
    if (i.isEven) {
      pendulumList.insert(0, values[i]);
    } else {
      pendulumList.add(values[i]);
    }
  }
  return pendulumList;
}
