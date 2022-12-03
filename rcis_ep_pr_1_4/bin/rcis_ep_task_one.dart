import 'dart:io';

void main() {
  //zadanie 1 pr 1.4
  try {
    stdout.write('Введите целое положительное число n: ');
    int n = int.parse(stdin.readLineSync()!);
    int multiplication = 1;

    for (int i = 3; i <= n; i += 3) {
      multiplication *= i;
    }
    print('Произведение: $multiplication');
  }
  catch (e) {
    print('fail');
  }
}