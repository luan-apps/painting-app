import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaintingProvider extends ChangeNotifier {

  Map<Offset, Color> _points = {};
  Map<Offset, Color> get points => _points;
  void addOffset(Offset offset) {
    _points = _points..addAll({offset: currentColor});
    notifyListeners();
  }

  Color _currentColor = Colors.black;
  Color get currentColor => _currentColor;
  void changeCurrentColor(color) {
    _currentColor = color;
    notifyListeners();
  }

}