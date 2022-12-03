import 'dart:io';

void main() {
  //zadanie 5 pr 1.4
  try {
    stdout.write('Введите вещественное число a: ');
    int a = int.parse(stdin.readLineSync()!);
    stdout.write('Введите вещественное число b: ');
    int b = int.parse(stdin.readLineSync()!);

    if ((a >= -1) && (a <= 3) && (b >= -2) && (b <= 4)) {
      print('Точка принадлежит заштрихованной области');
    }
    else {
      print('Точка не принаджлежит заштрихованной области');
    }
  }
  catch (e) {
    print('fail');
  }
}