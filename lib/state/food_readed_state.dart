import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class FoodReadedState extends ChangeNotifier {
  String? _food;
  bool _isDetailsReaded = false;
  bool _isCompositionReaded = false;

  String? get getFood => _food;
  bool get getIsDetailsReaded => _isDetailsReaded;
  bool get getIsCompositionReaded => _isCompositionReaded;

  void refreshData() {
    _food = null;
    _isDetailsReaded = false;
    _isCompositionReaded = false;
  }

  void setFood(String value) {
    _food = value;
  }

  void setIsDetailsReaded(bool value) {
    _isDetailsReaded = value;
  }

  void setIsCompositionReaded(bool value) {
    _isCompositionReaded = value;
  }
}