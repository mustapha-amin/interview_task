import 'package:flutter/material.dart';

class OptionNotifer extends ChangeNotifier {
  OptionNotifer._internal();

  static final OptionNotifer _instance = OptionNotifer._internal();

  factory OptionNotifer() => _instance;

  int selectedOption = 3;
  List<String> options = ['the peace in the early mornings', 'the magical golden hours', 'wind-down time after dinners', 'the serenity past midnight'];

  void updateOption(int index) {
    selectedOption = index;
    notifyListeners();
  }
}
