import 'dart:io';

void main() {
  //zadanie 3 pr 1.6
  try {
    stdout.write('Введите число n: ');
    int n = int.parse(stdin.readLineSync()!);

    if (n % 2 == 0 && n % 10 == 0) {
      print('Число четное и кратное 10');
    }
    else {
      print('Число нечетное или некратное 10');
    }
  }
  catch (e) {
    print('fail');
  }
}