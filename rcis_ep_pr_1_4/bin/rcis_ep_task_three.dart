import 'dart:io';

void main() {
  //zadanie 3 pr 1.4
  try {
    File num = File('numsTask3.txt');
    dynamic a = (num.readAsStringSync());

    List<String> b = a.split(",");
    List<int> numbers = b.map(int.parse).toList();
    print(numbers);

    List<int> array = [];

    for (int i = 0; i < numbers.length; i++) {
      if (numbers[i] == 0) {
        break;
      }
      array.add(numbers[i]);
    }
    int min = array[0];
    int max = array[0];

    for (int i = 0; i < array.length; i++) {
      if (array[i] > max) {
        max = array[i];
      }
      if (array[i] < min) {
        min = array[i];
      }
    }
    print(array);
    print('Минимальный элемент: $min');
    print('Максимальный элемент: $max');
    double relation = 0;
    relation = min / max;
    print('Отношение минмального и максимального элементов друг к другу: $relation');
  }
  catch (e) {
    print('fail');
  }
}