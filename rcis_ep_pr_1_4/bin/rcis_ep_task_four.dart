import 'dart:io';

void main() {
  //zadanie 4 pr 1.4
  try {
    File num = File('numsTask4.txt');
    dynamic a = (num.readAsStringSync());
    List<String> b = a.split(" ");
    List<int> numbers = b.map(int.parse).toList();
    print(numbers);
    int quantity = 1;

    for (int i = 0; i < numbers.length - 1; i++) {
      if (numbers[i] == numbers[i + 1]) {
      quantity++;
      }
    }
    print(quantity);
  }
  catch (e) {
    print('fail');
  }
}
