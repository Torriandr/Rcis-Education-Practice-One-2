import 'dart:io';

void main() {
  //zadanie 2 pr 1.5
  try {
    File num1 = File('numsTask2.txt');
    dynamic a = (num1.readAsStringSync());
    List<String> b = a.split(';');
    List<double> numbers = b.map(double.parse).toList();
    print(numbers);
    
    for (int i = 0; i < numbers.length - 1; i++) {
      for ( int j = 0; j < numbers.length - i - 1; j++) {
        if (numbers[j] <= numbers[j + 1]) {
          double numm = numbers[j + 1];
          numbers[j + 1] = numbers[j];
          numbers[j] = numm;
        }
        if (numbers[j] > numbers[j + 1]) {
          double numm = numbers[j];
          numbers[j] = numbers[j + 1];
          numbers[j + 1] = numm;
        }
      }
    }
    
    File num2 = File('numsTask2.txt');
    num2.writeAsStringSync('$numbers');
    print('Полученная отсортированная последовательность: $numbers');
  }
  catch (e) {
    print('fail');
  }
}