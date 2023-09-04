int maxMultiple(divisor, bound) {
  if (bound < divisor) {
    return 0;
  }
  for (int i = 0; i < bound; i++) {
    if ((bound - i) % divisor == 0) {
      return bound - i;
    }
  }
  return 1;
}
