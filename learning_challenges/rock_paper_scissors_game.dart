import 'dart:io';
import 'dart:math';

void main() {
  const moves = {
    'r': 'Rock',
    'p': 'Paper',
    's': 'Scissors',
  };

  while (true) {
    stdout.write('Rock, Paper, Scissors? (r/p/s) or (q) to quit: ');
    final player = stdin.readLineSync()!.toLowerCase();

    if (player == 'q') break;
    if (player.isEmpty) continue;
    if (!moves.keys.toList().contains(player)) {
      print('Invalid input');
      continue;
    }

    final computerMove = moves.keys.toList()[Random().nextInt(3)];

    if (player == computerMove) {
      print('You played: ${moves[player]}');
      print('The computer played: ${moves[computerMove]}');
      print('Draw');
    } else if (player == 'r' && computerMove == 's' ||
        player == 's' && computerMove == 'p' ||
        player == 'p' && computerMove == 'r') {
      print('You played: ${moves[player]}');
      print('The computer played: ${moves[computerMove]}');
      print('You won!');
    } else {
      print('You played: ${moves[player]}');
      print('The computer played: ${moves[computerMove]}');
      print('You lost');
    }
  }
}
