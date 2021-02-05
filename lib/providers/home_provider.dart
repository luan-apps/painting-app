import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier {

  String _title;
  String _xAxis;
  String _yAxis;

  void changeTitle(title) => _title = _title;
  void changeXAxis(x) => _xAxis = x;
  void changeYAxis(y) => _yAxis = y;

}