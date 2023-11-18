class DividedBy {
  static List<int> tellANumber(int number) {
    List<int> dividedNumbers = [];

    for (int i = 0; i < number; i++) {
      if (i % 3 == 0 || i % 5 == 0) {
        if (i > 0) {
          dividedNumbers.add(i);
        }
      }
    }

    return dividedNumbers;
  }

  static int sumDivedNumbers(List<int> numbersList) {
    int sum = 0;

    for (int element in numbersList) {
      sum += element;
    }

    return sum;
  }
}
