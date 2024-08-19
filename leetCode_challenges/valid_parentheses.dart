class Solution {
  static bool isValid(String s) {
    if (s.length.isOdd) return false;

    final stack = <String>[];
    var opened = 0, closed = 0;
    final brackets = s.split('');

    for (var bracket in brackets) {
      if (['(', '[', '{'].contains(bracket)) {
        stack.add(bracket);
        opened++;
      } else {
        switch (bracket) {
          case ')':
            if (stack.isEmpty || stack.last != '(') {
              return false;
            } else {
              stack.removeLast();
              closed++;
            }
            break;
          case ']':
            if (stack.isEmpty || stack.last != '[') {
              return false;
            } else {
              stack.removeLast();
              closed++;
            }
            break;
          case '}':
            if (stack.isEmpty || stack.last != '{') {
              return false;
            } else {
              stack.removeLast();
              closed++;
            }
            break;
        }
      }
    }

    return opened == closed;
  }
}

void main() {
  print(Solution.isValid('([{}])'));
}
