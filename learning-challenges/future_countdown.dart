Future<void> countdown(int n) async {
  for (var i = n; i >= 0; i--) {
    await Future.delayed(
      const Duration(seconds: 1),
      () => print(i),
    );
  }
}

void main() async {
  await countdown(5);
  print('Done');
}
