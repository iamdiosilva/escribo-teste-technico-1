class NumberListHelper {
  static String listNumber(List<int> numbersList) {
    String numbersString = '';

    for (int element in numbersList) {
      if (element != 0) {
        numbersString += '${element.toString()} ';
      }
    }
    return numbersString;
  }
}
