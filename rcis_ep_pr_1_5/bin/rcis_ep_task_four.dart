import 'dart:io';

void main() {
  //zadanie 4 pr 1.5
  try {
    File num1 = File('numsTask4.txt');
    dynamic a = (num1.readAsStringSync());
    List<String> b = a.split(' ');
    List<int> numbers = b.map(int.parse).toList();
    print(numbers);
    int max = numbers[0];

    for (int i = 1; i < numbers.length; i++) {
      if (numbers[i] > max) {
        max = numbers[i];
      }
    }
    print('Максимальное число среди элементов: $max');
    int sum = 0;

    for (int i = 0; i < numbers.length; i++) {
      sum += numbers[i];
      if (sum == max - 1) {
        break;
      }
    }
    print('Сумма элементов, отличающихся от максимального на 1: $sum');
  }
  catch (e) {
    print('fail');
  }
}