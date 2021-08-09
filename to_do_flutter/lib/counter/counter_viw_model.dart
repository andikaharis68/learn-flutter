import 'package:flutter/material.dart';

class CounterViewModel extends ChangeNotifier {
  int _value = 0;

  get val => _value;
  set val(id) => _value = id;

  increment() {
    _value++;
    notifyListeners();
  }

  decrement() {
    _value--;
    notifyListeners();
  }
}
