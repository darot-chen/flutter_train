main() {
// Control flow
  // var day = 2;
  // switch (day) {
  //   case 1:
  //     print('Monday');
  //     break;
  //   case 2:
  //     print('Tue');
  //     break;
  //   case 3:
  //     print('wed');
  //     break;
  //   case 4:
  //     print('thur');
  //     break;
  //   case 5:
  //     print('');
  //     break;
  //   case 6:
  //     print('');
  //     break;
  //   case 7:
  //     print('');
  //     break;
  //   default:
  // }

  List<int> list = [1, 2, 3, 4, 5, 6, 7];
  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }

  int counter = 0;
  while (counter < 5) {
    print('Hello');
    counter++;
  }
}
