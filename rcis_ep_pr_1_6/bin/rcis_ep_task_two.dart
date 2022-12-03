import 'dart:io';

void main() {
  //zadanie 2 pr 1.6
  try {
    File word = File('numsTask2.txt');
    dynamic a = (word.readAsStringSync());
    List<String> array = a.split("\n");
    print(array);
      
    int length = 0;

    for (int i = 0; i < array.length; i++) {
      stdout.write('${array[i]} ');
    }    
  }
  catch (e) {
    print('fail');
  }
}