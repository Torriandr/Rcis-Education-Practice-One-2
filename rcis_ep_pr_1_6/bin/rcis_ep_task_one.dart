import 'dart:io';

void main() {
  //zadanie 1 pr 1.6
  try {
    File word = File ('numsTask1.txt');
    dynamic a = (word.readAsStringSync());
    List<String> array = a.split(" ");
    print(array);
      
    int length = 0;

    for (int i = 0; i < array.length; i++) {
      length = array[i].length;
      if (length % 2 == 1) {
        stdout.write('${array[i]} ');
      }
    }
  } 
  catch (e) {
    print('fail');
  }
}