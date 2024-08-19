enum Operations { Addition, Substraction, Division, Multiplication }

void main() {
  const operation = Operations.Division;
  const a = 1, b = 2;
  switch (operation) {
    case Operations.Addition:
      print(a + b);
      break;
    case Operations.Substraction:
      print(a - b);
      break;
    case Operations.Division:
      b != 0 ?  print(a/b) : print("Error[division by 0]");
      break;
    case Operations.Multiplication:
      print(a * b);
      break;
  }
}
