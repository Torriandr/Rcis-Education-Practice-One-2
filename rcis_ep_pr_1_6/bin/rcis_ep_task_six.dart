import 'dart:io';
import 'dart:math';

void main() {
  //zadanie 6 pr 1.6
  try {
    List<double> array = List.filled(Random().nextInt(11), 0);
    List<double> positive = [];
    List<double> negative = [];

    for (int i = 0; i < array.length; i++) {
      double random = (Random().nextDouble() * 20) - 10;
      array[i] = random;
    }
    print(array);
    for (int i =0; i < array.length; i++) {
      if (array[i] > 0) {
        positive.add(array[i]);
      }
      else if (array[i] < 0) {
        negative.add(array[i]);
      }
    }
    print(positive);
    print(negative);
  } 
  catch (e) {
    print('fail');
  }
}