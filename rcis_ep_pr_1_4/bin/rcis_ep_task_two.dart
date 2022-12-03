import 'dart:io';

void main() {
  //zadanie 2 pr 1.4
  try {
    File num = File('numsTask2.txt');
    dynamic a = (num.readAsStringSync());

    List<String> b = a.split(";");
    List<double> numbers = b.map(double.parse).toList();
    print(numbers);
    double summ = 0;

    List<double> array = [];

    for (int i = 0; i < numbers.length; i++) {
      if (numbers[i] == 0) {
        break;
      }
      array.add(numbers[i]);
      if (array[i] > 0) {
        summ += array[i];
      }
    }
    print(array);
    print("Сумма положительных элементов получившейся последовательност: $summ");
  }
  catch (e) {  
    print('fail');
  }
}