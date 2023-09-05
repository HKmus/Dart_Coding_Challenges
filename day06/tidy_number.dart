bool tidyNumber(n) {
  String number = n.toString();
  if (number.length == 1) {
    return true;
  } else {
    for (int i = 0; i < number.length - 1; i++) {
      if (int.parse(number[i]) > int.parse(number[i + 1])) {
        return false;
      }
    }
    return true;
  }
}
