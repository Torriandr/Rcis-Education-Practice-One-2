import 'dart:io';

void main() {
  //zadanie 5 pr 1.5
  try {
    File num1 = File('numsTask5.txt');
    dynamic a = (num1.readAsStringSync());
    List<String> b = a.split(' ');
    List<int> numders = b.map(int.parse).toList();
    print(numders);
    int min = numders[0];
    int max = numders[0];
    int minInd = 0;
    int maxInd = 0;

    for (int i = 1; i < numders.length; i++) {
      if (numders[i] < min) {
        min = numders[i];
        minInd = i;
      }
      if (numders[i] > max) {
        max = numders[i];
        maxInd = i;
      }
    }
    print('Максимальное число среди всех элементов: $max');
    print('Минимальное число среди всех элементов: $min');
    if (minInd > maxInd) {
      int num = minInd;
      minInd = maxInd;
      maxInd = num;
    }
    int digites = 0;
    int divisible = 0;
    double arithmetic = 0;

    for (int i = 0; i < numders.length; i++) {
      if (i < maxInd && i > minInd) {
        digites += numders[i];
        divisible++;
      }
    }
    arithmetic = digites / divisible;
    print('Среднее арифметическое элементов, расположенных между минимальным и максимальным: $arithmetic');
  }
  catch (e) {
    print('fail');
  }
}