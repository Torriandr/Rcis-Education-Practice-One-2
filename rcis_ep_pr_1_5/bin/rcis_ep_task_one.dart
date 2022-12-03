import 'dart:io';

void main() {
  //zadanie 1 pr 1.5
  try {
    File num = File('numsTask1.txt');
    dynamic a = (num.readAsStringSync());
    List<String> b = a.split(" ");
    List<int> numbers = b.map(int.parse).toList();
    print(numbers);   
    int min = numbers[0];
    int index = 0;

    for (int i = 0; i < numbers.length; i++) {
      if (numbers[i] < min) {
        min = numbers[i];
        index = i;
      }
    }
    print('Минимальное число среди элементов: $min');
    int multiplication = 1;

    for (int i = 0; i < numbers.length; i++) {
      if (i > index) {
        multiplication *= numbers[i];
      }
    }
    print('Произведение элементов расположенных после минимального элемента: $multiplication');
  }
  catch (e) {
    print('fail');
  }
}