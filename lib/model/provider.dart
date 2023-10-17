import 'package:flutter/material.dart';

class NumbersListProvider extends ChangeNotifier {
  List<int> numbers = [1, 2, 3, 4];

  void add() {
    numbers.add(numbers.last + 1);
    notifyListeners();
  }
}
