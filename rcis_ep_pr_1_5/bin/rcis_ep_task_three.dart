import 'dart:io';

void main() {
  //zadanie 3 pr 1.5
  try {
    File num1 = File('numsTask3.txt');
    dynamic a = (num1.readAsStringSync());
    List<String> b = a.split(' ');
    List<int> numbers = b.map(int.parse).toList();
    print(numbers);
    int min = numbers[0];
    int index = 0;

    for ( int i = 1; i < numbers.length; i++) {
      if (numbers[i] < min) {
        min = numbers[i];
        index = i;
      }
    }
    print('Минимальное число среди элементов: $min');
    int digit = 0;
    int divisible = 0;
    double arithmetic = 0;

    for (int i = 0; i < numbers.length; i++) {
      if (i < index) {
        digit += numbers[i];
        divisible++;
      }
    }
    arithmetic = digit / divisible;
    print('Среднее арифметическое элементов, расположенных до минимального: $arithmetic');
  }   
  catch (e) {
    print('fail');
  }
}
