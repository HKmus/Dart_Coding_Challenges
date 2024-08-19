import 'dart:io';

void main(List<String> args) {
  if (args.isEmpty) {
    print('Usage: dart main.dart <inputFile.csv>');
    exit(1);
  }
  final inputFile = args.first;
  final lines = File(inputFile).readAsLinesSync();
  lines.removeAt(0);

  final durationByTag = <String, double>{};
  List<String> values;
  double duration;
  String tag;

  for (var line in lines) {
    values = line.split(',');
    duration = double.parse(values[3].replaceAll('"', ''));
    tag = values[5].replaceAll('"', '');

    if (durationByTag[tag] == null) {
      durationByTag[tag] = duration;
    } else {
      durationByTag[tag] = durationByTag[tag]! + duration;
    }
  }

  for (var entry in durationByTag.entries) {
    print('${entry.key}: ${entry.value.toStringAsFixed(1)}H');
  }
}