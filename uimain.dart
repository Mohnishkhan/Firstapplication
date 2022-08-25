import 'package:firstapp/newUi/newloginpage.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(uimain());
}
class uimain extends StatelessWidget {
  const uimain ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myLogin(),
    );
  }
}