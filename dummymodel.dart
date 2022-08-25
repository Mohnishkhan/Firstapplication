import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
class dummymodel extends ChangeNotifier{
  String  title="hello";

  void changeValue(){
    title="Change to new Value";
    notifyListeners();
  }

}
class Newmodel extends ChangeNotifier{
  int a =10;

  void chngeInt(){
    a=100;
    notifyListeners();
  }
}