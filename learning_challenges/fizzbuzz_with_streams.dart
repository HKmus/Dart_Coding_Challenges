Stream<String> asyncFizzBuzz() async* {
  for (var i = 1; i <= 15; i++) {
    await Future.delayed(const Duration(milliseconds: 500));
    if (i % 3 == 0 && i % 5 == 0) {
      yield 'fizz buzz';
    } else if (i % 3 == 0) {
      yield 'fizz';
    } else if (i % 5 == 0) {
      yield 'buzz';  
    } else {
      yield '$i';
    }
  }
}

void main() async{
  final stream = await asyncFizzBuzz();
  stream.forEach((element) => print(element));
}
