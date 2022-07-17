import 'dart:io';

exec() {
  print('Enter a number: ');
  int num = int.parse(stdin.readLineSync() ?? '0');
}
