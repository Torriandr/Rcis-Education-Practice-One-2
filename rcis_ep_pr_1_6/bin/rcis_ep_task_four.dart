import 'dart:io';

void main() {
  //zadanie 4 pr 1.6
  try {
    stdout.write('Введите положительное максимальное число: ');
    int max = int.parse(stdin.readLineSync()!);  
    stdout.write('Введите положительное минимальное число: ');
    int min = int.parse(stdin.readLineSync()!);
    stdout.write('Введите положительное число a: ');
    int a = int.parse(stdin.readLineSync()!);
    int summ = 0;

    while (min <= max) {
      if (min % a == 0) {
        summ += min;
      }
      else if (max < 0 || min < 0) {
        break;
      }
      min++;  
    }
    print('Сумма чисел: $summ');
  }
  catch (e) {
    print('fail');
  }
}