import 'dart:io';

import 'package:escribo_console_app_teste_1/helpers/number_list_helper.dart';

import 'data/repositories/divided_by.dart';

void main(List<String> arguments) {
  late bool itsAPositiveNumber;

  do {
    print('Por favor digite um numero inteiro positivo para continuar:');

    String? input = stdin.readLineSync();
    try {
      if (int.parse(input!) > 0) {
        final numbers = DividedBy.tellANumber(int.parse(input));

        print(
          'A soma dos numeros dividos por 3 e 5 em um range de 0 a $input eh: ${DividedBy.sumDivedNumbers(numbers).toString()}.',
        );
        if (numbers.isEmpty) {
          print('Nao existem numeros divisiveis por 3 e 5.');
        } else {
          print('Os numeros sao${NumberListHelper.listNumber(numbers)}.');
        }

        itsAPositiveNumber = true;
      } else {
        itsAPositiveNumber = false;
      }
    } on Exception {
      itsAPositiveNumber = false;
      print(
        'Voce nao digitou um numero inteiro positivo, por favor digite um numero inteiro e positivo para continuar.',
      );
    }
  } while (itsAPositiveNumber != true);
}
