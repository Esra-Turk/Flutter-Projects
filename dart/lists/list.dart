import 'dart:io';

main() {
  enterNumber();
  printList();
  sortNumberFromlowToHigh();
  sortNumberFromHighToLow();
}

List<int> list = [];
var number;

void enterNumber() {
  for (int i = 0; i < 10; i++) {
    try {
      stdout.write('${i + 1}.sayıyı giriniz: ');
      number = int.parse(stdin.readLineSync()!);
      list.add(number);
    } catch (e) {
      print("Lütfen yalnızca sayı giriniz. Örneğin -4550, 34, 0");
      i--;
    }
  }
}

void sortNumberFromlowToHigh() {
  list.sort();
  print("Küçükten büyüğe sıralanmış: $list ");
}

void sortNumberFromHighToLow() {
  print("Büyükten Küçüğe Sıralanmış: ${list.reversed.toList()}");
}

void printList() {
  print("Liste: ${list}");
}
