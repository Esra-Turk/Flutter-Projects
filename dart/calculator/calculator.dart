import 'dart:io';

main() {
  print(
      "Hesap Makinesi\nİşlemler\n1-Toplama(+)\n2-Çıkarma(-)\n3-Çarpma(*)\nBölme(/)\nÇıkış yapmak için(x)");

  while (true) {
    num total = 0;
    stdout.write('Yapmak istediğiniz işlemi giriniz:');
    String? process = stdin.readLineSync();

    if (process == 'x') {
      print("Hesap makinesinden çıkış yapılıyor..");
      break;
    }

    stdout.write('1.sayıyı giriniz:');
    var number1 = double.parse(stdin.readLineSync()!);
    stdout.write('2.sayıyı giriniz:');
    var number2 = double.parse(stdin.readLineSync()!);

    if (process == '/' && number2 == 0) {
      print("0'a bölünme hatası.Tekrar deneyiniz");
      continue;
    }

    switch (process) {
      case '+':
        total += addition(number1, number2);
        break;

      case '-':
        total += substraction(number1, number2);
        break;

      case '*':
        total += multiplication(number1, number2);
        break;

      case '/':
        total += divison(number1, number2)!;
        break;

      default:
        print("Yanlış işlem girdiniz");
        break;
    }

    // ignore: unnecessary_null_comparison
    if (total != null) {
      print("İşlem sonucu: $total");
    } else {
      print("İşlem sonuçlanamadı");
    }
  }
}

num addition(num num1, num num2) => num1 + num2;
num substraction(num num1, num num2) => num1 - num2;
num multiplication(num num1, num num2) => num1 * num2;
num? divison(var num1, var num2) => num1 / num2;
