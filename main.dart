
import 'package:firstapp/createaccount.dart';
import 'package:firstapp/dummymodel.dart';
import 'package:firstapp/newUi/newloginpage.dart';
import 'package:firstapp/views/productScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'mainpage.dart';

void main() {
runApp(myMain());
}
class myMain extends StatelessWidget {
  const myMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
        title: "MainPage",
      home: myLogin(),
    );
  }
}
