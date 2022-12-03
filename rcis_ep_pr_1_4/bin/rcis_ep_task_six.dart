import 'dart:io';

void main() {
    //zadanie 6 pr 1.4
  try {
    stdout.write('Введите вещественное число a: ');
    int a = int.parse(stdin.readLineSync()!);
    stdout.write('Введите вещественное число b: ');
    int b = int.parse(stdin.readLineSync()!);

    if (a <= 1 && b <= 1 && b >= -3) {
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