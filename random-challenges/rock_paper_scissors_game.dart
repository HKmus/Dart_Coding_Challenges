import 'dart:io';
import 'dart:math';

//Rock, paper, scissors game
void main() {
  Random random = new Random();
  const movements = {
    'r': 'Rock',
    'p': 'Paper',
    's': 'Scissors',
  };
  while (true) {
    stdout.write('Rock, paper, scissors? (r/p/s) or (q) to quit: ');
    final input = stdin.readLineSync();

    if (input == 'r' || input == 'p' || input == 's') {
      final playerMove = movements[input];
      final computerMove = movements.values.elementAt(random.nextInt(3));

      print('You played: $playerMove');
      print('Computer Played: $computerMove');

      if (playerMove == computerMove) {
        print('Drow');
      } else if (playerMove == 'Rock' && computerMove == 'Scissors' ||
          playerMove == 'Paper' && computerMove == 'Rock' ||
          playerMove == 'Scissors' && computerMove == 'Paper') {
        print('You won');
      } else {
        print('You\'ve lose');
      }
    } else if (input == 'q') {
      break;
    } else {
      print('Invalid Input');
    }
  }
}
