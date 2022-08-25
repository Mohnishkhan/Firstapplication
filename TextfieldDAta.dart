import 'dart:collection';

import 'main.dart';
import 'package:flutter/material.dart';
import 'mainpage.dart';
import 'createaccount.dart';

class Mapmodel{
  String? name;
  String? email;
  String? pass;
  Mapmodel({this.name,this.email,this.pass});
}

List<Mapmodel> namesList2 = [];
class TextfieldData extends StatelessWidget {

  String name,email,password;


  TextfieldData({required this.name, required this.email, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Textfielddata"),
      ),
      body:ListView.builder(
        itemCount: namesList2.length,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
              leading: const Icon(Icons.list),

              title  :  Text("${namesList2[index].name}"+" "),
          subtitle:Text("${namesList2[index].email}"+" "),

          );
        }
        ),
      /// list view builder
      /// use list

    );
  }
}