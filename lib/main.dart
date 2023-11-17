import 'dart:io';

import 'package:escribo_console_app_teste_1/helpers/number_list_helper.dart';

import 'data/repositories/divided_by.dart';

void main(List<String> arguments) {
  late bool itsANumber;

  do {
    print('Por favor digite um numero inteiro para continuar:');

    String? input = stdin.readLineSync();
    try {
      final numbers = DividedBy.tellANumber(int.parse(input!));
      print(
        'A soma dos numeros dividos por 3 e 5 em um range de 0 a $input eh: ${DividedBy.sumDivedNumbers(numbers).toString()}',
      );
      print(
        'Os numeros sao ${NumberListHelper.listNumber(numbers)}',
      );
      itsANumber = true;
    } on Exception {
      itsANumber = false;
      print(
        'Voce nao digitou um numero inteiro, por favor digite um numero inteiro para continuar.',
      );
    }
  } while (itsANumber != true);
}
