import 'dart:io';
import 'dart:math';

void main() {
  //zadanie 5 pr 1.6
  try {
    stdout.write('Введите n: ');
    int n = int.parse(stdin.readLineSync()!);
    stdout.write('Введите m: ');
    int m = int.parse(stdin.readLineSync()!);
    var a = List.generate(n, (i) => List.filled(m, 0, growable: true));
    int sum = 0;

    for(int i = 0; i < n; i++) {
      for (int j = 0; j < m; j++) {
          int random = Random().nextInt(2);
          a[i][j] = random;
      }
    }

    for (int i = 0; i < n; ++i) {
      sum = 0;
      for (int j = 0; j < m; ++j) {
        sum += a[i][j];
      }
      if (sum % 2 != 0) {
        a[i].add(1);
      }
      else {
        a[i].add(0);
      }
      print('Сумма строки: $sum');
    }
    
    for(int i = 0; i < a.length; i++) {
      print(a[i]);
    }
  }
  catch (e) {
    print('fail');
  }
}